
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8cursor {int dummy; } ;
struct tree {int dummy; } ;


 char* buf2 ;
 char* buf3 ;
 int strlen (char*) ;
 int utf8byte (struct utf8cursor*) ;
 scalar_t__ utf8cursor (struct utf8cursor*,struct tree*,char*) ;

__attribute__((used)) static int normalize_line(struct tree *tree)
{
 char *s;
 char *t;
 int c;
 struct utf8cursor u8c;


 s = buf2;
 t = buf3;
 if (utf8cursor(&u8c, tree, s))
  return -1;
 while ((c = utf8byte(&u8c)) > 0)
  if (c != (unsigned char)*t++)
   return -1;
 if (c < 0)
  return -1;
 if (*t != 0)
  return -1;


 s = buf2;

 s[strlen(s) + 1] = -1;
 t = buf3;
 if (utf8cursor(&u8c, tree, s))
  return -1;
 while ((c = utf8byte(&u8c)) > 0)
  if (c != (unsigned char)*t++)
   return -1;
 if (c < 0)
  return -1;
 if (*t != 0)
  return -1;

 return 0;
}
