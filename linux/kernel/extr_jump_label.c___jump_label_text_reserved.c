
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int dummy; } ;


 scalar_t__ addr_conflict (struct jump_entry*,void*,void*) ;

__attribute__((used)) static int __jump_label_text_reserved(struct jump_entry *iter_start,
  struct jump_entry *iter_stop, void *start, void *end)
{
 struct jump_entry *iter;

 iter = iter_start;
 while (iter < iter_stop) {
  if (addr_conflict(iter, start, end))
   return 1;
  iter++;
 }

 return 0;
}
