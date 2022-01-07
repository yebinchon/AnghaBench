
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct path {int dummy; } ;


 int AA_MAY_CHMOD ;
 int OP_CHMOD ;
 int common_perm_cond (int ,struct path const*,int ) ;

__attribute__((used)) static int apparmor_path_chmod(const struct path *path, umode_t mode)
{
 return common_perm_cond(OP_CHMOD, path, AA_MAY_CHMOD);
}
