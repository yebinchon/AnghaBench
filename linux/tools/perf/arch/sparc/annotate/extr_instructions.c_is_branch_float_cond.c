
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_branch_float_cond(const char *cond)
{
 if (cond[0] == '\0')
  return 1;

 if ((cond[0] == 'a' || cond[0] == 'e' ||
      cond[0] == 'z' || cond[0] == 'g' ||
      cond[0] == 'l' || cond[0] == 'n' ||
      cond[0] == 'o' || cond[0] == 'u') &&
     cond[1] == '\0')
  return 1;

 if (((cond[0] == 'g' && cond[1] == 'e') ||
      (cond[0] == 'l' && (cond[1] == 'e' ||
     cond[1] == 'g')) ||
      (cond[0] == 'n' && (cond[1] == 'e' ||
     cond[1] == 'z')) ||
      (cond[0] == 'u' && (cond[1] == 'e' ||
     cond[1] == 'g' ||
     cond[1] == 'l'))) &&
     cond[2] == '\0')
  return 1;

 if (cond[0] == 'u' &&
     (cond[1] == 'g' || cond[1] == 'l') &&
     cond[2] == 'e' &&
     cond[3] == '\0')
  return 1;

 return 0;
}
