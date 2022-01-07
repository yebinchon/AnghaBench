
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_chmap {int dummy; } ;


 int EINVAL ;
 unsigned char SNDRV_CHMAP_FL ;
 unsigned char SNDRV_CHMAP_FR ;

__attribute__((used)) static int nvhdmi_chmap_validate(struct hdac_chmap *chmap,
  int ca, int chs, unsigned char *map)
{
 if (ca == 0x00 && (map[0] != SNDRV_CHMAP_FL || map[1] != SNDRV_CHMAP_FR))
  return -EINVAL;

 return 0;
}
