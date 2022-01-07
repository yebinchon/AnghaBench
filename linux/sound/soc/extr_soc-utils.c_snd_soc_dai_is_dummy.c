
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int * driver; } ;


 int dummy_dai ;

int snd_soc_dai_is_dummy(struct snd_soc_dai *dai)
{
 if (dai->driver == &dummy_dai)
  return 1;
 return 0;
}
