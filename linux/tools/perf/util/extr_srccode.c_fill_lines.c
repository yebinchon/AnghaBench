
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char*,char,int) ;

__attribute__((used)) static void fill_lines(char **lines, int maxline, char *map, int maplen)
{
 int l;
 char *end = map + maplen;
 char *p = map;

 if (maplen == 0 || maxline == 0)
  return;
 l = 0;
 lines[l++] = map;
 while (p < end && (p = memchr(p, '\n', end - p)) != ((void*)0)) {
  if (l >= maxline)
   return;
  lines[l++] = ++p;
 }
 if (p < end)
  lines[l] = p;
}
