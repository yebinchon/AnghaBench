
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebt_table_info {int dummy; } ;


 int EINVAL ;
 int NF_BR_BROUTING ;

__attribute__((used)) static int check(const struct ebt_table_info *info, unsigned int valid_hooks)
{
 if (valid_hooks & ~(1 << NF_BR_BROUTING))
  return -EINVAL;
 return 0;
}
