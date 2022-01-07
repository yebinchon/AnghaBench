
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int chip; } ;
struct uac3_badd_profile {int c_chmask; int p_chmask; int name; } ;


 int usb_audio_warn (int ,char*,int ) ;

__attribute__((used)) static bool uac3_badd_func_has_valid_channels(struct usb_mixer_interface *mixer,
           struct uac3_badd_profile *f,
           int c_chmask, int p_chmask)
{




 if (f->c_chmask < 0 && f->p_chmask < 0) {
  if (!c_chmask && !p_chmask) {
   usb_audio_warn(mixer->chip, "BAAD %s: no channels?",
           f->name);
   return 0;
  }
  return 1;
 }

 if ((f->c_chmask < 0 && !c_chmask) ||
     (f->c_chmask >= 0 && f->c_chmask != c_chmask)) {
  usb_audio_warn(mixer->chip, "BAAD %s c_chmask mismatch",
          f->name);
  return 0;
 }
 if ((f->p_chmask < 0 && !p_chmask) ||
     (f->p_chmask >= 0 && f->p_chmask != p_chmask)) {
  usb_audio_warn(mixer->chip, "BAAD %s p_chmask mismatch",
          f->name);
  return 0;
 }
 return 1;
}
