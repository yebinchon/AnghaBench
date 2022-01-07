
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;
typedef scalar_t__ __u64 ;


 int parse_branch_str (char const*,scalar_t__*) ;

int
parse_branch_stack(const struct option *opt, const char *str, int unset)
{
 __u64 *mode = (__u64 *)opt->value;

 if (unset)
  return 0;




 if (*mode)
  return -1;

 return parse_branch_str(str, mode);
}
