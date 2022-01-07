
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {int shift; unsigned int depth; unsigned int map_nr; TYPE_1__* map; } ;
typedef int gfp_t ;
struct TYPE_2__ {int swap_lock; scalar_t__ depth; } ;


 unsigned int BITS_PER_LONG ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;
 int ENOMEM ;
 int ilog2 (unsigned int) ;
 TYPE_1__* kcalloc_node (unsigned int,int,int ,int) ;
 scalar_t__ min (unsigned int,unsigned int) ;
 int spin_lock_init (int *) ;

int sbitmap_init_node(struct sbitmap *sb, unsigned int depth, int shift,
        gfp_t flags, int node)
{
 unsigned int bits_per_word;
 unsigned int i;

 if (shift < 0) {
  shift = ilog2(BITS_PER_LONG);






  if (depth >= 4) {
   while ((4U << shift) > depth)
    shift--;
  }
 }
 bits_per_word = 1U << shift;
 if (bits_per_word > BITS_PER_LONG)
  return -EINVAL;

 sb->shift = shift;
 sb->depth = depth;
 sb->map_nr = DIV_ROUND_UP(sb->depth, bits_per_word);

 if (depth == 0) {
  sb->map = ((void*)0);
  return 0;
 }

 sb->map = kcalloc_node(sb->map_nr, sizeof(*sb->map), flags, node);
 if (!sb->map)
  return -ENOMEM;

 for (i = 0; i < sb->map_nr; i++) {
  sb->map[i].depth = min(depth, bits_per_word);
  depth -= sb->map[i].depth;
  spin_lock_init(&sb->map[i].swap_lock);
 }
 return 0;
}
