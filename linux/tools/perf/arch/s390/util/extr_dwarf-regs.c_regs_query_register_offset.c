
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ errno ;
 int gprs ;
 int offsetof (int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 unsigned long strtoul (char const*,int *,int) ;
 int user_pt_regs ;

int regs_query_register_offset(const char *name)
{
 unsigned long gpr;

 if (!name || strncmp(name, "%r", 2))
  return -EINVAL;

 errno = 0;
 gpr = strtoul(name + 2, ((void*)0), 10);
 if (errno || gpr >= 16)
  return -EINVAL;

 return offsetof(user_pt_regs, gprs) + 8 * gpr;
}
