
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rpfilter_info {unsigned int flags; } ;
struct xt_mtchk_param {int table; struct xt_rpfilter_info* matchinfo; } ;


 int EINVAL ;
 unsigned int XT_RPFILTER_OPTION_MASK ;
 int pr_info_ratelimited (char*,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int rpfilter_check(const struct xt_mtchk_param *par)
{
 const struct xt_rpfilter_info *info = par->matchinfo;
 unsigned int options = ~XT_RPFILTER_OPTION_MASK;
 if (info->flags & options) {
  pr_info_ratelimited("unknown options\n");
  return -EINVAL;
 }

 if (strcmp(par->table, "mangle") != 0 &&
     strcmp(par->table, "raw") != 0) {
  pr_info_ratelimited("only valid in \'raw\' or \'mangle\' table, not \'%s\'\n",
        par->table);
  return -EINVAL;
 }

 return 0;
}
