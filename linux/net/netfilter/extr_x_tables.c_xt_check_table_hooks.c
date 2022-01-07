
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table_info {int* hook_entry; int* underflow; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int pr_err_ratelimited (char*,char const*,unsigned int) ;

int xt_check_table_hooks(const struct xt_table_info *info, unsigned int valid_hooks)
{
 const char *err = "unsorted underflow";
 unsigned int i, max_uflow, max_entry;
 bool check_hooks = 0;

 BUILD_BUG_ON(ARRAY_SIZE(info->hook_entry) != ARRAY_SIZE(info->underflow));

 max_entry = 0;
 max_uflow = 0;

 for (i = 0; i < ARRAY_SIZE(info->hook_entry); i++) {
  if (!(valid_hooks & (1 << i)))
   continue;

  if (info->hook_entry[i] == 0xFFFFFFFF)
   return -EINVAL;
  if (info->underflow[i] == 0xFFFFFFFF)
   return -EINVAL;

  if (check_hooks) {
   if (max_uflow > info->underflow[i])
    goto error;

   if (max_uflow == info->underflow[i]) {
    err = "duplicate underflow";
    goto error;
   }
   if (max_entry > info->hook_entry[i]) {
    err = "unsorted entry";
    goto error;
   }
   if (max_entry == info->hook_entry[i]) {
    err = "duplicate entry";
    goto error;
   }
  }
  max_entry = info->hook_entry[i];
  max_uflow = info->underflow[i];
  check_hooks = 1;
 }

 return 0;
error:
 pr_err_ratelimited("%s at hook %d\n", err, i);
 return -EINVAL;
}
