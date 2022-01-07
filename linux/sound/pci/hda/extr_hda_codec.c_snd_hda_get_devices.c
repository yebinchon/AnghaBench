
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hda_codec {int core; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_DEVICE_LIST ;
 unsigned int snd_hda_get_num_devices (struct hda_codec*,int ) ;
 scalar_t__ snd_hdac_read (int *,int ,int ,int,unsigned int*) ;

int snd_hda_get_devices(struct hda_codec *codec, hda_nid_t nid,
   u8 *dev_list, int max_devices)
{
 unsigned int parm;
 int i, dev_len, devices;

 parm = snd_hda_get_num_devices(codec, nid);
 if (!parm)
  return 0;

 dev_len = parm + 1;
 dev_len = dev_len < max_devices ? dev_len : max_devices;

 devices = 0;
 while (devices < dev_len) {
  if (snd_hdac_read(&codec->core, nid,
      AC_VERB_GET_DEVICE_LIST, devices, &parm))
   break;

  for (i = 0; i < 8; i++) {
   dev_list[devices] = (u8)parm;
   parm >>= 4;
   devices++;
   if (devices >= dev_len)
    break;
  }
 }
 return devices;
}
