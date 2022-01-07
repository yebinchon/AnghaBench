
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int __parse_regs (struct option const*,char const*,int,int) ;

int
parse_user_regs(const struct option *opt, const char *str, int unset)
{
 return __parse_regs(opt, str, unset, 0);
}
