
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int AA_MAY_GETATTR ;
 int OP_GETATTR ;
 int common_perm_cond (int ,struct path const*,int ) ;

__attribute__((used)) static int apparmor_inode_getattr(const struct path *path)
{
 return common_perm_cond(OP_GETATTR, path, AA_MAY_GETATTR);
}
