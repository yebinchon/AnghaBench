
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {TYPE_1__* name; } ;
struct TYPE_2__ {scalar_t__ size; int content; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int type_index_compare(const void *_a, const void *_b)
{
 const struct type *const *a = _a, *const *b = _b;

 if ((*a)->name->size != (*b)->name->size)
  return (*a)->name->size - (*b)->name->size;
 else
  return memcmp((*a)->name->content, (*b)->name->content,
         (*a)->name->size);
}
