
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfrfml {scalar_t__ pdu_size; int incomplete_frm; int seghead; } ;
struct cfpkt {int dummy; } ;


 int ENOMEM ;
 int EPROTO ;
 scalar_t__ RFM_HEAD_SIZE ;
 struct cfpkt* cfpkt_append (int ,struct cfpkt*,scalar_t__) ;
 scalar_t__ cfpkt_extr_head (struct cfpkt*,char*,int) ;
 scalar_t__ memcmp (char*,int ,int) ;

__attribute__((used)) static struct cfpkt *rfm_append(struct cfrfml *rfml, char *seghead,
    struct cfpkt *pkt, int *err)
{
 struct cfpkt *tmppkt;
 *err = -EPROTO;


 if (cfpkt_extr_head(pkt, seghead, 6) < 0)
  return ((void*)0);


 if (memcmp(seghead, rfml->seghead, 6) != 0)
  return ((void*)0);

 tmppkt = cfpkt_append(rfml->incomplete_frm, pkt,
   rfml->pdu_size + RFM_HEAD_SIZE);


 *err = -ENOMEM;
 if (tmppkt == ((void*)0))
  return ((void*)0);

 *err = 0;
 return tmppkt;
}
