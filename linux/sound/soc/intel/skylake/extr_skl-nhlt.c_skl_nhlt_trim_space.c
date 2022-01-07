
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

__attribute__((used)) static void skl_nhlt_trim_space(char *trim)
{
 char *s = trim;
 int cnt;
 int i;

 cnt = 0;
 for (i = 0; s[i]; i++) {
  if (!isspace(s[i]))
   s[cnt++] = s[i];
 }

 s[cnt] = '\0';
}
