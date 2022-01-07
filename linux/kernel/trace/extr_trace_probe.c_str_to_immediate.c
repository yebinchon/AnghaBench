
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ isdigit (char) ;
 int kstrtol (char*,int ,long*) ;
 int kstrtoul (char*,int ,unsigned long*) ;

__attribute__((used)) static int str_to_immediate(char *str, unsigned long *imm)
{
 if (isdigit(str[0]))
  return kstrtoul(str, 0, imm);
 else if (str[0] == '-')
  return kstrtol(str, 0, (long *)imm);
 else if (str[0] == '+')
  return kstrtol(str + 1, 0, (long *)imm);
 return -EINVAL;
}
