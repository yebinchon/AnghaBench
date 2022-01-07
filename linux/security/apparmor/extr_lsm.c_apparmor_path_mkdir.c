
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct path {int dummy; } ;
struct dentry {int dummy; } ;


 int AA_MAY_CREATE ;
 int OP_MKDIR ;
 int S_IFDIR ;
 int common_perm_create (int ,struct path const*,struct dentry*,int ,int ) ;

__attribute__((used)) static int apparmor_path_mkdir(const struct path *dir, struct dentry *dentry,
          umode_t mode)
{
 return common_perm_create(OP_MKDIR, dir, dentry, AA_MAY_CREATE,
      S_IFDIR);
}
