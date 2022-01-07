
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;


 size_t strlcat (int ,char const*,int) ;

__attribute__((used)) static size_t append_ctl_name(struct snd_kcontrol *kctl, const char *str)
{
 return strlcat(kctl->id.name, str, sizeof(kctl->id.name));
}
