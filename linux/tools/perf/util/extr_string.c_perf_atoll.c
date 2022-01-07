
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int __fallthrough ;
 int isdigit (char const) ;
 scalar_t__ islower (char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtoll (char const*,char**,int) ;

s64 perf_atoll(const char *str)
{
 s64 length;
 char *p;
 char c;

 if (!isdigit(str[0]))
  goto out_err;

 length = strtoll(str, &p, 10);
 switch (c = *p++) {
  case 'b': case 'B':
   if (*p)
    goto out_err;

   __fallthrough;
  case '\0':
   return length;
  default:
   goto out_err;

  case 'k': case 'K':
   length <<= 10;
   break;
  case 'm': case 'M':
   length <<= 20;
   break;
  case 'g': case 'G':
   length <<= 30;
   break;
  case 't': case 'T':
   length <<= 40;
   break;
 }

 if (islower(c)) {
  if (strcmp(p, "b") != 0)
   goto out_err;
 } else {
  if (strcmp(p, "B") != 0)
   goto out_err;
 }
 return length;

out_err:
 return -1;
}
