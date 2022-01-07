
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct select_data {int dispose; int found; struct dentry* start; } ;
struct TYPE_2__ {int count; } ;
struct dentry {int d_flags; TYPE_1__ d_lockref; } ;
typedef enum d_walk_ret { ____Placeholder_d_walk_ret } d_walk_ret ;


 int DCACHE_LRU_LIST ;
 int DCACHE_SHRINK_LIST ;
 int D_WALK_CONTINUE ;
 int D_WALK_NORETRY ;
 int D_WALK_QUIT ;
 int d_lru_del (struct dentry*) ;
 int d_shrink_add (struct dentry*,int *) ;
 int list_empty (int *) ;
 scalar_t__ need_resched () ;

__attribute__((used)) static enum d_walk_ret select_collect(void *_data, struct dentry *dentry)
{
 struct select_data *data = _data;
 enum d_walk_ret ret = D_WALK_CONTINUE;

 if (data->start == dentry)
  goto out;

 if (dentry->d_flags & DCACHE_SHRINK_LIST) {
  data->found++;
 } else {
  if (dentry->d_flags & DCACHE_LRU_LIST)
   d_lru_del(dentry);
  if (!dentry->d_lockref.count) {
   d_shrink_add(dentry, &data->dispose);
   data->found++;
  }
 }





 if (!list_empty(&data->dispose))
  ret = need_resched() ? D_WALK_QUIT : D_WALK_NORETRY;
out:
 return ret;
}
