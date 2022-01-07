
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

__attribute__((used)) static void make_lowercase(char *s)
{
 if (!s)
  return;
 for (; *s; s++)
  *s = tolower(*s);
}
