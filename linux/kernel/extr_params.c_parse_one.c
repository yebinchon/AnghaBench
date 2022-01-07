
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_param {scalar_t__ level; int mod; TYPE_1__* ops; int name; } ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {int flags; int (* set ) (char*,struct kernel_param const*) ;} ;


 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int KERNEL_PARAM_OPS_FL_NOARG ;
 int kernel_param_lock (int ) ;
 int kernel_param_unlock (int ) ;
 scalar_t__ param_check_unsafe (struct kernel_param const*) ;
 scalar_t__ parameq (char*,int ) ;
 int pr_debug (char*,char const*,...) ;
 int stub1 (char*,struct kernel_param const*) ;

__attribute__((used)) static int parse_one(char *param,
       char *val,
       const char *doing,
       const struct kernel_param *params,
       unsigned num_params,
       s16 min_level,
       s16 max_level,
       void *arg,
       int (*handle_unknown)(char *param, char *val,
         const char *doing, void *arg))
{
 unsigned int i;
 int err;


 for (i = 0; i < num_params; i++) {
  if (parameq(param, params[i].name)) {
   if (params[i].level < min_level
       || params[i].level > max_level)
    return 0;

   if (!val &&
       !(params[i].ops->flags & KERNEL_PARAM_OPS_FL_NOARG))
    return -EINVAL;
   pr_debug("handling %s with %p\n", param,
    params[i].ops->set);
   kernel_param_lock(params[i].mod);
   if (param_check_unsafe(&params[i]))
    err = params[i].ops->set(val, &params[i]);
   else
    err = -EPERM;
   kernel_param_unlock(params[i].mod);
   return err;
  }
 }

 if (handle_unknown) {
  pr_debug("doing %s: %s='%s'\n", doing, param, val);
  return handle_unknown(param, val, doing, arg);
 }

 pr_debug("Unknown argument '%s'\n", param);
 return -ENOENT;
}
