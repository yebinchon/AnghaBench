
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_inode_mark {int wd; int fsn_mark; } ;
struct idr {int dummy; } ;
typedef int spinlock_t ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int fsnotify_get_mark (int *) ;
 int idr_alloc_cyclic (struct idr*,struct inotify_inode_mark*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int inotify_add_to_idr(struct idr *idr, spinlock_t *idr_lock,
         struct inotify_inode_mark *i_mark)
{
 int ret;

 idr_preload(GFP_KERNEL);
 spin_lock(idr_lock);

 ret = idr_alloc_cyclic(idr, i_mark, 1, 0, GFP_NOWAIT);
 if (ret >= 0) {

  i_mark->wd = ret;
  fsnotify_get_mark(&i_mark->fsn_mark);
 }

 spin_unlock(idr_lock);
 idr_preload_end();
 return ret < 0 ? ret : 0;
}
