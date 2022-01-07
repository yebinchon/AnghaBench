
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
typedef int snd_kcontrol_tlv_rw_t ;


 int snd_create_std_mono_ctl_offset (struct usb_mixer_interface*,unsigned int,unsigned int,unsigned int,int,int ,char const*,int *) ;

__attribute__((used)) static int snd_create_std_mono_ctl(struct usb_mixer_interface *mixer,
    unsigned int unitid,
    unsigned int control,
    unsigned int cmask,
    int val_type,
    const char *name,
    snd_kcontrol_tlv_rw_t *tlv_callback)
{
 return snd_create_std_mono_ctl_offset(mixer, unitid, control, cmask,
  val_type, 0 , name, tlv_callback);
}
