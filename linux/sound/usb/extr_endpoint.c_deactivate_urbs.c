
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dummy; } ;
struct snd_usb_endpoint {unsigned int nurbs; TYPE_1__* urb; int unlink_mask; int active_mask; scalar_t__ next_packet_write_pos; scalar_t__ next_packet_read_pos; int ready_playback_urbs; int flags; TYPE_2__* chip; } ;
struct TYPE_4__ {int shutdown; } ;
struct TYPE_3__ {struct urb* urb; } ;


 int EBADFD ;
 int EP_FLAG_RUNNING ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int test_and_set_bit (unsigned int,int *) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static int deactivate_urbs(struct snd_usb_endpoint *ep, bool force)
{
 unsigned int i;

 if (!force && atomic_read(&ep->chip->shutdown))
  return -EBADFD;

 clear_bit(EP_FLAG_RUNNING, &ep->flags);

 INIT_LIST_HEAD(&ep->ready_playback_urbs);
 ep->next_packet_read_pos = 0;
 ep->next_packet_write_pos = 0;

 for (i = 0; i < ep->nurbs; i++) {
  if (test_bit(i, &ep->active_mask)) {
   if (!test_and_set_bit(i, &ep->unlink_mask)) {
    struct urb *u = ep->urb[i].urb;
    usb_unlink_urb(u);
   }
  }
 }

 return 0;
}
