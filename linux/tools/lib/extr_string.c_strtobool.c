
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int strtobool(const char *s, bool *res)
{
 if (!s)
  return -EINVAL;

 switch (s[0]) {
 case 'y':
 case 'Y':
 case '1':
  *res = 1;
  return 0;
 case 'n':
 case 'N':
 case '0':
  *res = 0;
  return 0;
 case 'o':
 case 'O':
  switch (s[1]) {
  case 'n':
  case 'N':
   *res = 1;
   return 0;
  case 'f':
  case 'F':
   *res = 0;
   return 0;
  default:
   break;
  }
 default:
  break;
 }

 return -EINVAL;
}
