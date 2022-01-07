
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int AA_MAY_CHOWN ;
 int OP_CHOWN ;
 int common_perm_cond (int ,struct path const*,int ) ;

__attribute__((used)) static int apparmor_path_chown(const struct path *path, kuid_t uid, kgid_t gid)
{
 return common_perm_cond(OP_CHOWN, path, AA_MAY_CHOWN);
}
