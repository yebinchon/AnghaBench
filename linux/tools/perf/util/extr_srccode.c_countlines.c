
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char*,char,int) ;

__attribute__((used)) static int countlines(char *map, int maplen)
{
 int numl;
 char *end = map + maplen;
 char *p = map;

 if (maplen == 0)
  return 0;
 numl = 0;
 while (p < end && (p = memchr(p, '\n', end - p)) != ((void*)0)) {
  numl++;
  p++;
 }
 if (p < end)
  numl++;
 return numl;
}
