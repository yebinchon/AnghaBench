
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct dentry {int dummy; } ;


 int AA_MAY_CREATE ;
 int OP_SYMLINK ;
 int S_IFLNK ;
 int common_perm_create (int ,struct path const*,struct dentry*,int ,int ) ;

__attribute__((used)) static int apparmor_path_symlink(const struct path *dir, struct dentry *dentry,
     const char *old_name)
{
 return common_perm_create(OP_SYMLINK, dir, dentry, AA_MAY_CREATE,
      S_IFLNK);
}
