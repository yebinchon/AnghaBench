
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstatfs {int f_fsid; } ;
struct dentry {int dummy; } ;
typedef int __kernel_fsid_t ;


 int statfs_by_dentry (struct dentry*,struct kstatfs*) ;

int vfs_get_fsid(struct dentry *dentry, __kernel_fsid_t *fsid)
{
 struct kstatfs st;
 int error;

 error = statfs_by_dentry(dentry, &st);
 if (error)
  return error;

 *fsid = st.f_fsid;
 return 0;
}
