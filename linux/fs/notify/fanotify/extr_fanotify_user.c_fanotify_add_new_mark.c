
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_marks; } ;
struct fsnotify_group {TYPE_1__ fanotify_data; int num_marks; } ;
typedef int fsnotify_connp_t ;
typedef int __kernel_fsid_t ;


 int ENOMEM ;
 int ENOSPC ;
 struct fsnotify_mark* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ atomic_read (int *) ;
 int fanotify_mark_cache ;
 int fsnotify_add_mark_locked (struct fsnotify_mark*,int *,unsigned int,int ,int *) ;
 int fsnotify_init_mark (struct fsnotify_mark*,struct fsnotify_group*) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 struct fsnotify_mark* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct fsnotify_mark *fanotify_add_new_mark(struct fsnotify_group *group,
         fsnotify_connp_t *connp,
         unsigned int type,
         __kernel_fsid_t *fsid)
{
 struct fsnotify_mark *mark;
 int ret;

 if (atomic_read(&group->num_marks) > group->fanotify_data.max_marks)
  return ERR_PTR(-ENOSPC);

 mark = kmem_cache_alloc(fanotify_mark_cache, GFP_KERNEL);
 if (!mark)
  return ERR_PTR(-ENOMEM);

 fsnotify_init_mark(mark, group);
 ret = fsnotify_add_mark_locked(mark, connp, type, 0, fsid);
 if (ret) {
  fsnotify_put_mark(mark);
  return ERR_PTR(ret);
 }

 return mark;
}
