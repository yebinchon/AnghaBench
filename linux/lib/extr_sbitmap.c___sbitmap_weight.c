
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_word {int depth; int cleared; int word; } ;
struct sbitmap {unsigned int map_nr; struct sbitmap_word* map; } ;


 scalar_t__ bitmap_weight (int *,int ) ;

__attribute__((used)) static unsigned int __sbitmap_weight(const struct sbitmap *sb, bool set)
{
 unsigned int i, weight = 0;

 for (i = 0; i < sb->map_nr; i++) {
  const struct sbitmap_word *word = &sb->map[i];

  if (set)
   weight += bitmap_weight(&word->word, word->depth);
  else
   weight += bitmap_weight(&word->cleared, word->depth);
 }
 return weight;
}
