
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_SFNT_PAT_TYPE_GUS ;
 int SNDRV_SFNT_PAT_TYPE_MAP ;

__attribute__((used)) static inline int
is_special_type(int type)
{
 type &= 0x0f;
 return (type == SNDRV_SFNT_PAT_TYPE_GUS ||
  type == SNDRV_SFNT_PAT_TYPE_MAP);
}
