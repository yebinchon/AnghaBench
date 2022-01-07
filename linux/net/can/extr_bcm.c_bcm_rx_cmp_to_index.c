
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct canfd_frame {int flags; int len; } const canfd_frame ;
struct bcm_op {unsigned int cfsiz; int flags; struct canfd_frame const* last_frames; struct canfd_frame const* frames; } ;


 int RX_CHECK_DLC ;
 int RX_RECV ;
 int bcm_rx_update_and_send (struct bcm_op*,struct canfd_frame const*,struct canfd_frame const*) ;
 int get_u64 (struct canfd_frame const*,int) ;

__attribute__((used)) static void bcm_rx_cmp_to_index(struct bcm_op *op, unsigned int index,
    const struct canfd_frame *rxdata)
{
 struct canfd_frame *cf = op->frames + op->cfsiz * index;
 struct canfd_frame *lcf = op->last_frames + op->cfsiz * index;
 int i;






 if (!(lcf->flags & RX_RECV)) {

  bcm_rx_update_and_send(op, lcf, rxdata);
  return;
 }


 for (i = 0; i < rxdata->len; i += 8) {
  if ((get_u64(cf, i) & get_u64(rxdata, i)) !=
      (get_u64(cf, i) & get_u64(lcf, i))) {
   bcm_rx_update_and_send(op, lcf, rxdata);
   return;
  }
 }

 if (op->flags & RX_CHECK_DLC) {

  if (rxdata->len != lcf->len) {
   bcm_rx_update_and_send(op, lcf, rxdata);
   return;
  }
 }
}
