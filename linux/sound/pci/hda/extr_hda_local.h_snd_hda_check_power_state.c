
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; } ;
typedef int hda_nid_t ;


 int snd_hdac_check_power_state (int *,int ,unsigned int) ;

__attribute__((used)) static inline bool
snd_hda_check_power_state(struct hda_codec *codec, hda_nid_t nid,
     unsigned int target_state)
{
 return snd_hdac_check_power_state(&codec->core, nid, target_state);
}
