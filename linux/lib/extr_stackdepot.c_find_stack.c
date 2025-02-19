
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stack_record {scalar_t__ hash; int size; int entries; struct stack_record* next; } ;


 int stackdepot_memcmp (unsigned long*,int ,int) ;

__attribute__((used)) static inline struct stack_record *find_stack(struct stack_record *bucket,
          unsigned long *entries, int size,
          u32 hash)
{
 struct stack_record *found;

 for (found = bucket; found; found = found->next) {
  if (found->hash == hash &&
      found->size == size &&
      !stackdepot_memcmp(entries, found->entries, size))
   return found;
 }
 return ((void*)0);
}
