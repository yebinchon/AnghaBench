
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int private_data; } ;
struct ac97_controller {int dummy; } ;
struct ac97_codec_device {int vendor_id; int num; struct ac97_controller* ac97_ctrl; } ;


 int ENODEV ;
 scalar_t__ ac97_ids_match (unsigned int,int ,unsigned int) ;
 int compat_ac97_reset (struct snd_ac97*) ;
 int compat_ac97_warm_reset (struct snd_ac97*) ;
 unsigned int snd_ac97_bus_scan_one (struct ac97_controller*,int ) ;
 struct ac97_codec_device* to_ac97_device (int ) ;

int snd_ac97_reset(struct snd_ac97 *ac97, bool try_warm, unsigned int id,
 unsigned int id_mask)
{
 struct ac97_codec_device *adev = to_ac97_device(ac97->private_data);
 struct ac97_controller *actrl = adev->ac97_ctrl;
 unsigned int scanned;

 if (try_warm) {
  compat_ac97_warm_reset(ac97);
  scanned = snd_ac97_bus_scan_one(actrl, adev->num);
  if (ac97_ids_match(scanned, adev->vendor_id, id_mask))
   return 1;
 }

 compat_ac97_reset(ac97);
 compat_ac97_warm_reset(ac97);
 scanned = snd_ac97_bus_scan_one(actrl, adev->num);
 if (ac97_ids_match(scanned, adev->vendor_id, id_mask))
  return 0;

 return -ENODEV;
}
