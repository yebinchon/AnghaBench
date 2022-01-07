
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {unsigned int map_nr; unsigned int shift; TYPE_1__* map; } ;
struct TYPE_2__ {int depth; int word; } ;


 int SB_NR_TO_BIT (struct sbitmap*,unsigned int) ;
 unsigned int SB_NR_TO_INDEX (struct sbitmap*,unsigned int) ;
 int __sbitmap_get_word (int *,int ,int ,int) ;
 int min (int ,unsigned long) ;
 scalar_t__ sbitmap_deferred_clear (struct sbitmap*,unsigned int) ;

int sbitmap_get_shallow(struct sbitmap *sb, unsigned int alloc_hint,
   unsigned long shallow_depth)
{
 unsigned int i, index;
 int nr = -1;

 index = SB_NR_TO_INDEX(sb, alloc_hint);

 for (i = 0; i < sb->map_nr; i++) {
again:
  nr = __sbitmap_get_word(&sb->map[index].word,
     min(sb->map[index].depth, shallow_depth),
     SB_NR_TO_BIT(sb, alloc_hint), 1);
  if (nr != -1) {
   nr += index << sb->shift;
   break;
  }

  if (sbitmap_deferred_clear(sb, index))
   goto again;


  index++;
  alloc_hint = index << sb->shift;

  if (index >= sb->map_nr) {
   index = 0;
   alloc_hint = 0;
  }
 }

 return nr;
}
