
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct svc_export {struct path ex_path; } ;
struct kstat {int dummy; } ;
struct TYPE_2__ {scalar_t__ mnt_root; } ;


 int AT_STATX_SYNC_AS_STAT ;
 int STATX_BASIC_STATS ;
 scalar_t__ follow_up (struct path*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int vfs_getattr (struct path*,struct kstat*,int ,int ) ;

__attribute__((used)) static int get_parent_attributes(struct svc_export *exp, struct kstat *stat)
{
 struct path path = exp->ex_path;
 int err;

 path_get(&path);
 while (follow_up(&path)) {
  if (path.dentry != path.mnt->mnt_root)
   break;
 }
 err = vfs_getattr(&path, stat, STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
 path_put(&path);
 return err;
}
