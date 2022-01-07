
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int id; } ;
struct TYPE_8__ {TYPE_2__ dev_info; } ;
struct cfrfml {scalar_t__ fragment_size; TYPE_4__ serv; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_3__* up; TYPE_1__* dn; } ;
struct TYPE_7__ {int (* ctrlcmd ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_5__ {int * transmit; } ;


 int CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND ;
 int EPROTO ;
 int RFM_HEAD_SIZE ;
 int caif_assert (int ) ;
 scalar_t__ cfpkt_add_head (struct cfpkt*,int*,int) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_getlen (struct cfpkt*) ;
 int cfpkt_peek_head (struct cfpkt*,int*,int) ;
 struct cfpkt* cfpkt_split (struct cfpkt*,scalar_t__) ;
 int cfrfml_transmit_segment (struct cfrfml*,struct cfpkt*) ;
 int cfsrvl_ready (TYPE_4__*,int*) ;
 struct cfrfml* container_obj (struct cflayer*) ;
 int pr_info (char*,int) ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int cfrfml_transmit(struct cflayer *layr, struct cfpkt *pkt)
{
 int err;
 u8 seg;
 u8 head[6];
 struct cfpkt *rearpkt = ((void*)0);
 struct cfpkt *frontpkt = pkt;
 struct cfrfml *rfml = container_obj(layr);

 caif_assert(layr->dn != ((void*)0));
 caif_assert(layr->dn->transmit != ((void*)0));

 if (!cfsrvl_ready(&rfml->serv, &err))
  goto out;

 err = -EPROTO;
 if (cfpkt_getlen(pkt) <= RFM_HEAD_SIZE-1)
  goto out;

 err = 0;
 if (cfpkt_getlen(pkt) > rfml->fragment_size + RFM_HEAD_SIZE)
  err = cfpkt_peek_head(pkt, head, 6);

 if (err < 0)
  goto out;

 while (cfpkt_getlen(frontpkt) > rfml->fragment_size + RFM_HEAD_SIZE) {

  seg = 1;
  err = -EPROTO;

  if (cfpkt_add_head(frontpkt, &seg, 1) < 0)
   goto out;







  rearpkt = cfpkt_split(frontpkt, rfml->fragment_size);
  if (rearpkt == ((void*)0))
   goto out;

  err = cfrfml_transmit_segment(rfml, frontpkt);

  if (err != 0) {
   frontpkt = ((void*)0);
   goto out;
  }

  frontpkt = rearpkt;
  rearpkt = ((void*)0);

  err = -EPROTO;
  if (cfpkt_add_head(frontpkt, head, 6) < 0)
   goto out;

 }

 seg = 0;
 err = -EPROTO;

 if (cfpkt_add_head(frontpkt, &seg, 1) < 0)
  goto out;

 err = cfrfml_transmit_segment(rfml, frontpkt);

 frontpkt = ((void*)0);
out:

 if (err != 0) {
  pr_info("Connection error %d triggered on RFM link\n", err);


  layr->up->ctrlcmd(layr->up, CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND,
     rfml->serv.dev_info.id);

  if (rearpkt)
   cfpkt_destroy(rearpkt);

  if (frontpkt)
   cfpkt_destroy(frontpkt);
 }

 return err;
}
