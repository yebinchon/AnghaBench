
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct path_cond {int member_1; int member_0; } ;
struct path {int dentry; } ;
struct dentry {int dummy; } ;


 int common_perm_dir_dentry (char const*,struct path const*,struct dentry*,int ,struct path_cond*) ;
 int current_fsuid () ;
 int path_mediated_fs (int ) ;

__attribute__((used)) static int common_perm_create(const char *op, const struct path *dir,
         struct dentry *dentry, u32 mask, umode_t mode)
{
 struct path_cond cond = { current_fsuid(), mode };

 if (!path_mediated_fs(dir->dentry))
  return 0;

 return common_perm_dir_dentry(op, dir, dentry, mask, &cond);
}
