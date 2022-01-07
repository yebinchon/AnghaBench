
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int EINVAL ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static inline int parse_lineno(const char *str, unsigned int *val)
{
 BUG_ON(str == ((void*)0));
 if (*str == '\0') {
  *val = 0;
  return 0;
 }
 if (kstrtouint(str, 10, val) < 0) {
  pr_err("bad line-number: %s\n", str);
  return -EINVAL;
 }
 return 0;
}
