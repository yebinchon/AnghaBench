
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {int dummy; } ;
struct TYPE_3__ {int (* func ) (struct snd_ac97*) ;} ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* applicable_quirks ;
 int stub1 (struct snd_ac97*) ;

__attribute__((used)) static int apply_quirk(struct snd_ac97 *ac97, int type)
{
 if (type <= 0)
  return 0;
 else if (type >= ARRAY_SIZE(applicable_quirks))
  return -EINVAL;
 if (applicable_quirks[type].func)
  return applicable_quirks[type].func(ac97);
 return 0;
}
