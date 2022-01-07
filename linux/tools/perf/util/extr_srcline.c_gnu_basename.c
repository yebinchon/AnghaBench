
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *gnu_basename(const char *path)
{
 const char *base = strrchr(path, '/');

 return base ? base + 1 : path;
}
