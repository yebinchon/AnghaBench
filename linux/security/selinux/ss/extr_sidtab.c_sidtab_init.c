
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sidtab {int lock; int * convert; scalar_t__ count; TYPE_1__* isids; int * rcache; int roots; } ;
struct TYPE_2__ {scalar_t__ set; } ;


 size_t SECINITSID_NUM ;
 int SIDTAB_MAX ;
 size_t SIDTAB_RCACHE_SIZE ;
 int memset (int ,int ,int) ;
 int spin_lock_init (int *) ;

int sidtab_init(struct sidtab *s)
{
 u32 i;

 memset(s->roots, 0, sizeof(s->roots));


 for (i = 0; i < SIDTAB_RCACHE_SIZE; i++)
  s->rcache[i] = SIDTAB_MAX;

 for (i = 0; i < SECINITSID_NUM; i++)
  s->isids[i].set = 0;

 s->count = 0;
 s->convert = ((void*)0);

 spin_lock_init(&s->lock);
 return 0;
}
