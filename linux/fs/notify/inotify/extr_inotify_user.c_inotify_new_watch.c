
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int mask; } ;
struct inotify_inode_mark {int wd; TYPE_2__ fsn_mark; } ;
struct inode {int dummy; } ;
struct idr {int dummy; } ;
struct TYPE_5__ {int ucounts; int idr_lock; struct idr idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
typedef int spinlock_t ;
typedef int __u32 ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int fsnotify_add_inode_mark_locked (TYPE_2__*,struct inode*,int ) ;
 int fsnotify_init_mark (TYPE_2__*,struct fsnotify_group*) ;
 int fsnotify_put_mark (TYPE_2__*) ;
 int inc_inotify_watches (int ) ;
 int inotify_add_to_idr (struct idr*,int *,struct inotify_inode_mark*) ;
 int inotify_arg_to_mask (int ) ;
 int inotify_inode_mark_cachep ;
 int inotify_remove_from_idr (struct fsnotify_group*,struct inotify_inode_mark*) ;
 struct inotify_inode_mark* kmem_cache_alloc (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int inotify_new_watch(struct fsnotify_group *group,
        struct inode *inode,
        u32 arg)
{
 struct inotify_inode_mark *tmp_i_mark;
 __u32 mask;
 int ret;
 struct idr *idr = &group->inotify_data.idr;
 spinlock_t *idr_lock = &group->inotify_data.idr_lock;

 mask = inotify_arg_to_mask(arg);

 tmp_i_mark = kmem_cache_alloc(inotify_inode_mark_cachep, GFP_KERNEL);
 if (unlikely(!tmp_i_mark))
  return -ENOMEM;

 fsnotify_init_mark(&tmp_i_mark->fsn_mark, group);
 tmp_i_mark->fsn_mark.mask = mask;
 tmp_i_mark->wd = -1;

 ret = inotify_add_to_idr(idr, idr_lock, tmp_i_mark);
 if (ret)
  goto out_err;


 if (!inc_inotify_watches(group->inotify_data.ucounts)) {
  inotify_remove_from_idr(group, tmp_i_mark);
  ret = -ENOSPC;
  goto out_err;
 }


 ret = fsnotify_add_inode_mark_locked(&tmp_i_mark->fsn_mark, inode, 0);
 if (ret) {

  inotify_remove_from_idr(group, tmp_i_mark);
  goto out_err;
 }



 ret = tmp_i_mark->wd;

out_err:

 fsnotify_put_mark(&tmp_i_mark->fsn_mark);

 return ret;
}
