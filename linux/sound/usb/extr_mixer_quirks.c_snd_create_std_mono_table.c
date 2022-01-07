
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct std_mono_table {int tlv_callback; int * name; int val_type; int cmask; int control; int unitid; } ;


 int snd_create_std_mono_ctl (struct usb_mixer_interface*,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int snd_create_std_mono_table(struct usb_mixer_interface *mixer,
    struct std_mono_table *t)
{
 int err;

 while (t->name != ((void*)0)) {
  err = snd_create_std_mono_ctl(mixer, t->unitid, t->control,
    t->cmask, t->val_type, t->name, t->tlv_callback);
  if (err < 0)
   return err;
  t++;
 }

 return 0;
}
