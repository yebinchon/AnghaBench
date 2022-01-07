
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {unsigned int map_nr; TYPE_1__* map; } ;
struct TYPE_2__ {int word; int cleared; } ;



bool sbitmap_any_bit_set(const struct sbitmap *sb)
{
 unsigned int i;

 for (i = 0; i < sb->map_nr; i++) {
  if (sb->map[i].word & ~sb->map[i].cleared)
   return 1;
 }
 return 0;
}
