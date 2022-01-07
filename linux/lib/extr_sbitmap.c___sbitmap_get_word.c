
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_next_zero_bit (unsigned long*,unsigned long,unsigned int) ;
 int test_and_set_bit_lock (int,unsigned long*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __sbitmap_get_word(unsigned long *word, unsigned long depth,
         unsigned int hint, bool wrap)
{
 unsigned int orig_hint = hint;
 int nr;

 while (1) {
  nr = find_next_zero_bit(word, depth, hint);
  if (unlikely(nr >= depth)) {





   if (orig_hint && hint && wrap) {
    hint = orig_hint = 0;
    continue;
   }
   return -1;
  }

  if (!test_and_set_bit_lock(nr, word))
   break;

  hint = nr + 1;
  if (hint >= depth - 1)
   hint = 0;
 }

 return nr;
}
