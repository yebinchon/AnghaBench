
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int _snd_hda_set_pin_ctl (struct hda_codec*,int ,unsigned int,int) ;

__attribute__((used)) static inline int
snd_hda_set_pin_ctl_cache(struct hda_codec *codec, hda_nid_t pin,
     unsigned int val)
{
 return _snd_hda_set_pin_ctl(codec, pin, val, 1);
}
