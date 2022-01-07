
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ARRAY_SIZE (char const* const*) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,char const* const*) ;

__attribute__((used)) static int snd_rme_sync_source_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 static const char *const sync_sources[] = {
  "Internal", "AES", "SPDIF", "Internal"
 };

 return snd_ctl_enum_info(uinfo, 1,
     ARRAY_SIZE(sync_sources), sync_sources);
}
