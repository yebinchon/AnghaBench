
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int tomoyo_const_part_length(const char *filename)
{
 char c;
 int len = 0;

 if (!filename)
  return 0;
 while ((c = *filename++) != '\0') {
  if (c != '\\') {
   len++;
   continue;
  }
  c = *filename++;
  switch (c) {
  case '\\':
   len += 2;
   continue;
  case '0':
  case '1':
  case '2':
  case '3':
   c = *filename++;
   if (c < '0' || c > '7')
    break;
   c = *filename++;
   if (c < '0' || c > '7')
    break;
   len += 4;
   continue;
  }
  break;
 }
 return len;
}
