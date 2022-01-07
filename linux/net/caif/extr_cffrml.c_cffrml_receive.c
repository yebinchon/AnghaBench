
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* up; } ;
struct cffrml {scalar_t__ dofcs; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;


 int EILSEQ ;
 int EINVAL ;
 int EPROTO ;
 int cffrml_checksum ;
 int cffrml_rcv_checsum_error ;
 int cffrml_rcv_error ;
 int cfpkt_add_trail (struct cfpkt*,int*,int) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_erroneous (struct cfpkt*) ;
 int cfpkt_extr_head (struct cfpkt*,int*,int) ;
 int cfpkt_extr_trail (struct cfpkt*,int*,int) ;
 int cfpkt_iterate (struct cfpkt*,int ,int) ;
 scalar_t__ cfpkt_setlen (struct cfpkt*,int) ;
 struct cffrml* container_obj (struct cflayer*) ;
 int le16_to_cpu (int) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int,int) ;
 int stub1 (TYPE_1__*,struct cfpkt*) ;

__attribute__((used)) static int cffrml_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 u16 tmp;
 u16 len;
 u16 hdrchks;
 int pktchks;
 struct cffrml *this;
 this = container_obj(layr);

 cfpkt_extr_head(pkt, &tmp, 2);
 len = le16_to_cpu(tmp);


 if (!this->dofcs)
  len -= 2;

 if (cfpkt_setlen(pkt, len) < 0) {
  ++cffrml_rcv_error;
  pr_err("Framing length error (%d)\n", len);
  cfpkt_destroy(pkt);
  return -EPROTO;
 }




 if (this->dofcs) {
  cfpkt_extr_trail(pkt, &tmp, 2);
  hdrchks = le16_to_cpu(tmp);
  pktchks = cfpkt_iterate(pkt, cffrml_checksum, 0xffff);
  if (pktchks != hdrchks) {
   cfpkt_add_trail(pkt, &tmp, 2);
   ++cffrml_rcv_error;
   ++cffrml_rcv_checsum_error;
   pr_info("Frame checksum error (0x%x != 0x%x)\n",
    hdrchks, pktchks);
   return -EILSEQ;
  }
 }
 if (cfpkt_erroneous(pkt)) {
  ++cffrml_rcv_error;
  pr_err("Packet is erroneous!\n");
  cfpkt_destroy(pkt);
  return -EPROTO;
 }

 if (layr->up == ((void*)0)) {
  pr_err("Layr up is missing!\n");
  cfpkt_destroy(pkt);
  return -EINVAL;
 }

 return layr->up->receive(layr->up, pkt);
}
