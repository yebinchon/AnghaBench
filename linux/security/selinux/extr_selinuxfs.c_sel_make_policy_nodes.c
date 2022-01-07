
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_fs_info {int dummy; } ;


 int pr_err (char*) ;
 int sel_make_bools (struct selinux_fs_info*) ;
 int sel_make_classes (struct selinux_fs_info*) ;
 int sel_make_policycap (struct selinux_fs_info*) ;

__attribute__((used)) static int sel_make_policy_nodes(struct selinux_fs_info *fsi)
{
 int ret;

 ret = sel_make_bools(fsi);
 if (ret) {
  pr_err("SELinux: failed to load policy booleans\n");
  return ret;
 }

 ret = sel_make_classes(fsi);
 if (ret) {
  pr_err("SELinux: failed to load policy classes\n");
  return ret;
 }

 ret = sel_make_policycap(fsi);
 if (ret) {
  pr_err("SELinux: failed to load policy capabilities\n");
  return ret;
 }

 return 0;
}
