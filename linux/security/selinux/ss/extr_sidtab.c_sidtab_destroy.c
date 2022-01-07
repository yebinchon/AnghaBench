
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sidtab {TYPE_2__* roots; TYPE_1__* isids; } ;
struct TYPE_4__ {int ptr_inner; } ;
struct TYPE_3__ {int context; scalar_t__ set; } ;


 size_t SECINITSID_NUM ;
 size_t SIDTAB_MAX_LEVEL ;
 int context_destroy (int *) ;
 int sidtab_destroy_tree (TYPE_2__,size_t) ;

void sidtab_destroy(struct sidtab *s)
{
 u32 i, level;

 for (i = 0; i < SECINITSID_NUM; i++)
  if (s->isids[i].set)
   context_destroy(&s->isids[i].context);

 level = SIDTAB_MAX_LEVEL;
 while (level && !s->roots[level].ptr_inner)
  --level;

 sidtab_destroy_tree(s->roots[level], level);
}
