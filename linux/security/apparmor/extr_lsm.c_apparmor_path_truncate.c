
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int AA_MAY_SETATTR ;
 int MAY_WRITE ;
 int OP_TRUNC ;
 int common_perm_cond (int ,struct path const*,int) ;

__attribute__((used)) static int apparmor_path_truncate(const struct path *path)
{
 return common_perm_cond(OP_TRUNC, path, MAY_WRITE | AA_MAY_SETATTR);
}
