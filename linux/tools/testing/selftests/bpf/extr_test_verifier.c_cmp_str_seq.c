
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int needle ;


 int printf (char*,...) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static bool cmp_str_seq(const char *log, const char *exp)
{
 char needle[80];
 const char *p, *q;
 int len;

 do {
  p = strchr(exp, '\t');
  if (!p)
   p = exp + strlen(exp);

  len = p - exp;
  if (len >= sizeof(needle) || !len) {
   printf("FAIL\nTestcase bug\n");
   return 0;
  }
  strncpy(needle, exp, len);
  needle[len] = 0;
  q = strstr(log, needle);
  if (!q) {
   printf("FAIL\nUnexpected verifier log in successful load!\n"
          "EXP: %s\nRES:\n", needle);
   return 0;
  }
  log = q + len;
  exp = p + 1;
 } while (*p);
 return 1;
}
