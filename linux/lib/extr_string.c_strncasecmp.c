
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char tolower (unsigned char) ;

int strncasecmp(const char *s1, const char *s2, size_t len)
{

 unsigned char c1, c2;

 if (!len)
  return 0;

 do {
  c1 = *s1++;
  c2 = *s2++;
  if (!c1 || !c2)
   break;
  if (c1 == c2)
   continue;
  c1 = tolower(c1);
  c2 = tolower(c2);
  if (c1 != c2)
   break;
 } while (--len);
 return (int)c1 - (int)c2;
}
