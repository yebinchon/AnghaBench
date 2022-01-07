
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct super_block {TYPE_1__* s_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_2__ {int name; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PAGE_SIZE ;
 int PTR_ERR (char*) ;
 int SECINITSID_UNLABELED ;
 int SE_SBPROC ;
 scalar_t__ __get_free_page (int ) ;
 char* dentry_path_raw (struct dentry*,char*,int ) ;
 int free_page (unsigned long) ;
 int security_genfs_sid (int *,int ,char*,int,int *) ;
 int selinux_state ;

__attribute__((used)) static int selinux_genfs_get_sid(struct dentry *dentry,
     u16 tclass,
     u16 flags,
     u32 *sid)
{
 int rc;
 struct super_block *sb = dentry->d_sb;
 char *buffer, *path;

 buffer = (char *)__get_free_page(GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 path = dentry_path_raw(dentry, buffer, PAGE_SIZE);
 if (IS_ERR(path))
  rc = PTR_ERR(path);
 else {
  if (flags & SE_SBPROC) {



   while (path[1] >= '0' && path[1] <= '9') {
    path[1] = '/';
    path++;
   }
  }
  rc = security_genfs_sid(&selinux_state, sb->s_type->name,
     path, tclass, sid);
  if (rc == -ENOENT) {

   *sid = SECINITSID_UNLABELED;
   rc = 0;
  }
 }
 free_page((unsigned long)buffer);
 return rc;
}
