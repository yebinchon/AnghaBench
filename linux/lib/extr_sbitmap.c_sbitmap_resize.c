
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {unsigned int shift; unsigned int map_nr; unsigned int depth; TYPE_1__* map; } ;
struct TYPE_2__ {scalar_t__ depth; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 scalar_t__ min (unsigned int,unsigned int) ;
 int sbitmap_deferred_clear (struct sbitmap*,unsigned int) ;

void sbitmap_resize(struct sbitmap *sb, unsigned int depth)
{
 unsigned int bits_per_word = 1U << sb->shift;
 unsigned int i;

 for (i = 0; i < sb->map_nr; i++)
  sbitmap_deferred_clear(sb, i);

 sb->depth = depth;
 sb->map_nr = DIV_ROUND_UP(sb->depth, bits_per_word);

 for (i = 0; i < sb->map_nr; i++) {
  sb->map[i].depth = min(depth, bits_per_word);
  depth -= sb->map[i].depth;
 }
}
