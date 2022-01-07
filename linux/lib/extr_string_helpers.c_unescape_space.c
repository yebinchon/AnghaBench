
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool unescape_space(char **src, char **dst)
{
 char *p = *dst, *q = *src;

 switch (*q) {
 case 'n':
  *p = '\n';
  break;
 case 'r':
  *p = '\r';
  break;
 case 't':
  *p = '\t';
  break;
 case 'v':
  *p = '\v';
  break;
 case 'f':
  *p = '\f';
  break;
 default:
  return 0;
 }
 *dst += 1;
 *src += 1;
 return 1;
}
