
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int EBUSY ;
 int find_mixer_ctl (struct hda_codec*,char const*,int ,int) ;

__attribute__((used)) static int find_empty_mixer_ctl_idx(struct hda_codec *codec, const char *name,
        int start_idx)
{
 int i, idx;

 for (i = 0, idx = start_idx; i < 16; i++, idx++) {
  if (!find_mixer_ctl(codec, name, 0, idx))
   return idx;
 }
 return -EBUSY;
}
