
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {int slots_available; } ;


 int AC97_BUS_MAX_CODECS ;
 int BIT (int) ;
 int ac97_codec_add (struct ac97_controller*,int,unsigned int) ;
 scalar_t__ ac97_codec_find (struct ac97_controller*,int) ;
 unsigned int snd_ac97_bus_scan_one (struct ac97_controller*,int) ;

__attribute__((used)) static int ac97_bus_scan(struct ac97_controller *ac97_ctrl)
{
 int ret, i;
 unsigned int vendor_id;

 for (i = 0; i < AC97_BUS_MAX_CODECS; i++) {
  if (ac97_codec_find(ac97_ctrl, i))
   continue;
  if (!(ac97_ctrl->slots_available & BIT(i)))
   continue;
  vendor_id = snd_ac97_bus_scan_one(ac97_ctrl, i);
  if (!vendor_id)
   continue;

  ret = ac97_codec_add(ac97_ctrl, i, vendor_id);
  if (ret < 0)
   return ret;
 }
 return 0;
}
