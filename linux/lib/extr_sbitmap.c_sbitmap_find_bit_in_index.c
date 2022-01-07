
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {TYPE_1__* map; } ;
struct TYPE_2__ {int depth; int word; } ;


 int __sbitmap_get_word (int *,int ,unsigned int,int) ;
 int sbitmap_deferred_clear (struct sbitmap*,int) ;

__attribute__((used)) static int sbitmap_find_bit_in_index(struct sbitmap *sb, int index,
         unsigned int alloc_hint, bool round_robin)
{
 int nr;

 do {
  nr = __sbitmap_get_word(&sb->map[index].word,
     sb->map[index].depth, alloc_hint,
     !round_robin);
  if (nr != -1)
   break;
  if (!sbitmap_deferred_clear(sb, index))
   break;
 } while (1);

 return nr;
}
