
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sidtab {TYPE_2__* roots; } ;
struct TYPE_4__ {TYPE_1__* ptr_inner; void* ptr_leaf; } ;
struct TYPE_3__ {TYPE_2__* entries; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int SIDTAB_NODE_ALLOC_SIZE ;
 void* kzalloc (int ,int ) ;

__attribute__((used)) static int sidtab_alloc_roots(struct sidtab *s, u32 level)
{
 u32 l;

 if (!s->roots[0].ptr_leaf) {
  s->roots[0].ptr_leaf = kzalloc(SIDTAB_NODE_ALLOC_SIZE,
            GFP_ATOMIC);
  if (!s->roots[0].ptr_leaf)
   return -ENOMEM;
 }
 for (l = 1; l <= level; ++l)
  if (!s->roots[l].ptr_inner) {
   s->roots[l].ptr_inner = kzalloc(SIDTAB_NODE_ALLOC_SIZE,
       GFP_ATOMIC);
   if (!s->roots[l].ptr_inner)
    return -ENOMEM;
   s->roots[l].ptr_inner->entries[0] = s->roots[l - 1];
  }
 return 0;
}
