
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool is_full_cpuid(const char *id)
{
 const char *tmp = id;
 int count = 0;

 while ((tmp = strchr(tmp, '-')) != ((void*)0)) {
  count++;
  tmp++;
 }

 if (count == 3)
  return 1;

 return 0;
}
