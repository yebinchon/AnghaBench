
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path_cond {int dummy; } ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int common_perm (char const*,struct path*,int ,struct path_cond*) ;

__attribute__((used)) static int common_perm_dir_dentry(const char *op, const struct path *dir,
      struct dentry *dentry, u32 mask,
      struct path_cond *cond)
{
 struct path path = { .mnt = dir->mnt, .dentry = dentry };

 return common_perm(op, &path, mask, cond);
}
