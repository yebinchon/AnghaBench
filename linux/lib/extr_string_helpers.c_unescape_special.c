
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool unescape_special(char **src, char **dst)
{
 char *p = *dst, *q = *src;

 switch (*q) {
 case '\"':
  *p = '\"';
  break;
 case '\\':
  *p = '\\';
  break;
 case 'a':
  *p = '\a';
  break;
 case 'e':
  *p = '\e';
  break;
 default:
  return 0;
 }
 *dst += 1;
 *src += 1;
 return 1;
}
