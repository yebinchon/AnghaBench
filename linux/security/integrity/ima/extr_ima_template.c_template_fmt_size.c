
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int template_fmt_size(const char *template_fmt)
{
 char c;
 int template_fmt_len = strlen(template_fmt);
 int i = 0, j = 0;

 while (i < template_fmt_len) {
  c = template_fmt[i];
  if (c == '|')
   j++;
  i++;
 }

 return j + 1;
}
