
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct dentry {int dummy; } ;


 int AA_MAY_DELETE ;
 int OP_UNLINK ;
 int common_perm_rm (int ,struct path const*,struct dentry*,int ) ;

__attribute__((used)) static int apparmor_path_unlink(const struct path *dir, struct dentry *dentry)
{
 return common_perm_rm(OP_UNLINK, dir, dentry, AA_MAY_DELETE);
}
