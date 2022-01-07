
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct ubifs_znode {size_t iip; TYPE_2__* parent; scalar_t__ time; scalar_t__ cnext; } ;
struct TYPE_6__ {int * znode; } ;
struct ubifs_info {TYPE_3__ zroot; int clean_zn_cnt; int tnc_mutex; int umount_mutex; } ;
struct TYPE_5__ {TYPE_1__* zbranch; } ;
struct TYPE_4__ {int * znode; } ;


 int abs (scalar_t__) ;
 scalar_t__ atomic_long_read (int *) ;
 int atomic_long_sub (int,int *) ;
 int cond_resched () ;
 scalar_t__ ktime_get_seconds () ;
 int mutex_is_locked (int *) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int ubifs_clean_zn_cnt ;
 int ubifs_destroy_tnc_subtree (struct ubifs_info*,struct ubifs_znode*) ;
 struct ubifs_znode* ubifs_tnc_levelorder_next (struct ubifs_info*,int *,struct ubifs_znode*) ;
 int ubifs_zn_dirty (struct ubifs_znode*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int shrink_tnc(struct ubifs_info *c, int nr, int age, int *contention)
{
 int total_freed = 0;
 struct ubifs_znode *znode, *zprev;
 time64_t time = ktime_get_seconds();

 ubifs_assert(c, mutex_is_locked(&c->umount_mutex));
 ubifs_assert(c, mutex_is_locked(&c->tnc_mutex));

 if (!c->zroot.znode || atomic_long_read(&c->clean_zn_cnt) == 0)
  return 0;
 zprev = ((void*)0);
 znode = ubifs_tnc_levelorder_next(c, c->zroot.znode, ((void*)0));
 while (znode && total_freed < nr &&
        atomic_long_read(&c->clean_zn_cnt) > 0) {
  int freed;
  if (znode->cnext) {




   *contention = 1;
  } else if (!ubifs_zn_dirty(znode) &&
      abs(time - znode->time) >= age) {
   if (znode->parent)
    znode->parent->zbranch[znode->iip].znode = ((void*)0);
   else
    c->zroot.znode = ((void*)0);

   freed = ubifs_destroy_tnc_subtree(c, znode);
   atomic_long_sub(freed, &ubifs_clean_zn_cnt);
   atomic_long_sub(freed, &c->clean_zn_cnt);
   total_freed += freed;
   znode = zprev;
  }

  if (unlikely(!c->zroot.znode))
   break;

  zprev = znode;
  znode = ubifs_tnc_levelorder_next(c, c->zroot.znode, znode);
  cond_resched();
 }

 return total_freed;
}
