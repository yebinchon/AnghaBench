
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {TYPE_5__* up; } ;
struct TYPE_8__ {TYPE_2__ dev_info; TYPE_1__ layer; } ;
struct cfrfml {scalar_t__ pdu_size; int sync; TYPE_3__ serv; struct cfpkt* incomplete_frm; scalar_t__ seghead; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_4__* up; int * receive; } ;
struct TYPE_10__ {int (* receive ) (TYPE_5__*,struct cfpkt*) ;} ;
struct TYPE_9__ {int (* ctrlcmd ) (TYPE_4__*,int ,int ) ;} ;


 int CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND ;
 int EAGAIN ;
 int EIO ;
 int EPROTO ;
 scalar_t__ RFM_HEAD_SIZE ;
 int RFM_SEGMENTATION_BIT ;
 int caif_assert (int ) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_erroneous (struct cfpkt*) ;
 scalar_t__ cfpkt_extr_head (struct cfpkt*,int*,int) ;
 scalar_t__ cfpkt_getlen (struct cfpkt*) ;
 scalar_t__ cfpkt_peek_head (struct cfpkt*,scalar_t__,int) ;
 struct cfrfml* container_obj (struct cflayer*) ;
 scalar_t__ get_unaligned_le16 (scalar_t__) ;
 int pr_info (char*,int) ;
 struct cfpkt* rfm_append (struct cfrfml*,int*,struct cfpkt*,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_5__*,struct cfpkt*) ;
 int stub2 (TYPE_4__*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cfrfml_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 u8 tmp;
 bool segmented;
 int err;
 u8 seghead[6];
 struct cfrfml *rfml;
 struct cfpkt *tmppkt = ((void*)0);

 caif_assert(layr->up != ((void*)0));
 caif_assert(layr->receive != ((void*)0));
 rfml = container_obj(layr);
 spin_lock(&rfml->sync);

 err = -EPROTO;
 if (cfpkt_extr_head(pkt, &tmp, 1) < 0)
  goto out;
 segmented = tmp & RFM_SEGMENTATION_BIT;

 if (segmented) {
  if (rfml->incomplete_frm == ((void*)0)) {

   if (cfpkt_peek_head(pkt, rfml->seghead, 6) < 0)
    goto out;

   rfml->pdu_size = get_unaligned_le16(rfml->seghead+4);

   if (cfpkt_erroneous(pkt))
    goto out;
   rfml->incomplete_frm = pkt;
   pkt = ((void*)0);
  } else {

   tmppkt = rfm_append(rfml, seghead, pkt, &err);
   if (tmppkt == ((void*)0))
    goto out;

   if (cfpkt_erroneous(tmppkt))
    goto out;

   rfml->incomplete_frm = tmppkt;


   if (cfpkt_erroneous(tmppkt))
    goto out;
  }
  err = 0;
  goto out;
 }

 if (rfml->incomplete_frm) {


  tmppkt = rfm_append(rfml, seghead, pkt, &err);
  if (tmppkt == ((void*)0))
   goto out;

  if (cfpkt_erroneous(tmppkt))
   goto out;

  rfml->incomplete_frm = ((void*)0);
  pkt = tmppkt;
  tmppkt = ((void*)0);


  err = -EPROTO;
  if (rfml->pdu_size != cfpkt_getlen(pkt) - RFM_HEAD_SIZE + 1)
   goto out;
 }

 err = rfml->serv.layer.up->receive(rfml->serv.layer.up, pkt);

out:

 if (err != 0) {
  if (tmppkt)
   cfpkt_destroy(tmppkt);
  if (pkt)
   cfpkt_destroy(pkt);
  if (rfml->incomplete_frm)
   cfpkt_destroy(rfml->incomplete_frm);
  rfml->incomplete_frm = ((void*)0);

  pr_info("Connection error %d triggered on RFM link\n", err);


  layr->up->ctrlcmd(layr->up, CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND,
     rfml->serv.dev_info.id);
 }
 spin_unlock(&rfml->sync);

 if (unlikely(err == -EAGAIN))

  err = -EIO;

 return err;
}
