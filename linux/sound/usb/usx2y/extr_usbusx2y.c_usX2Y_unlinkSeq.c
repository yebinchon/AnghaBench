
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usX2Y_AsyncSeq {int buffer; int ** urb; } ;


 int URBS_AsyncSeq ;
 int kfree (int ) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void usX2Y_unlinkSeq(struct snd_usX2Y_AsyncSeq *S)
{
 int i;
 for (i = 0; i < URBS_AsyncSeq; ++i) {
  usb_kill_urb(S->urb[i]);
  usb_free_urb(S->urb[i]);
  S->urb[i] = ((void*)0);
 }
 kfree(S->buffer);
}
