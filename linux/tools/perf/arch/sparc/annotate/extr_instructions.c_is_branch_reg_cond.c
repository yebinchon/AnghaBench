
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_branch_reg_cond(const char *cond)
{
 if ((cond[0] == 'n' || cond[0] == 'l') &&
     cond[1] == 'z' &&
     cond[2] == '\0')
  return 1;

 if (cond[0] == 'z' &&
     cond[1] == '\0')
  return 1;

 if ((cond[0] == 'g' || cond[0] == 'l') &&
     cond[1] == 'e' &&
     cond[2] == 'z' &&
     cond[3] == '\0')
  return 1;

 if (cond[0] == 'g' &&
     cond[1] == 'z' &&
     cond[2] == '\0')
  return 1;

 return 0;
}
