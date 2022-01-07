
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * usb_mixer_elem_resume_func_t ;
struct usb_mixer_interface {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int *,int *,int *) ;
 int * snd_microii_mixer_spdif ;



__attribute__((used)) static int snd_microii_controls_create(struct usb_mixer_interface *mixer)
{
 int err, i;
 static usb_mixer_elem_resume_func_t resume_funcs[] = {
  129,
  ((void*)0),
  128
 };

 for (i = 0; i < ARRAY_SIZE(snd_microii_mixer_spdif); ++i) {
  err = add_single_ctl_with_resume(mixer, 0,
       resume_funcs[i],
       &snd_microii_mixer_spdif[i],
       ((void*)0));
  if (err < 0)
   return err;
 }

 return 0;
}
