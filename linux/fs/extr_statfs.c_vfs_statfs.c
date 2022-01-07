
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; int dentry; } ;
struct kstatfs {int f_flags; } ;


 int calculate_f_flags (int ) ;
 int statfs_by_dentry (int ,struct kstatfs*) ;

int vfs_statfs(const struct path *path, struct kstatfs *buf)
{
 int error;

 error = statfs_by_dentry(path->dentry, buf);
 if (!error)
  buf->f_flags = calculate_f_flags(path->mnt);
 return error;
}
