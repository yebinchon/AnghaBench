
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int pr_warn (char*) ;

__attribute__((used)) static int ovl_ccup_set(const char *buf, const struct kernel_param *param)
{
 pr_warn("overlayfs: \"check_copy_up\" module option is obsolete\n");
 return 0;
}
