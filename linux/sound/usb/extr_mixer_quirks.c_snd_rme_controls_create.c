
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int *,int *,int *) ;
 int * snd_rme_controls ;

__attribute__((used)) static int snd_rme_controls_create(struct usb_mixer_interface *mixer)
{
 int err, i;

 for (i = 0; i < ARRAY_SIZE(snd_rme_controls); ++i) {
  err = add_single_ctl_with_resume(mixer, 0,
       ((void*)0),
       &snd_rme_controls[i],
       ((void*)0));
  if (err < 0)
   return err;
 }

 return 0;
}
