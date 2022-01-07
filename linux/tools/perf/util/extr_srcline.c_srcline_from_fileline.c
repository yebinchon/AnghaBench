
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*,unsigned int) ;
 char* gnu_basename (char const*) ;
 int srcline_full_filename ;

__attribute__((used)) static char *srcline_from_fileline(const char *file, unsigned int line)
{
 char *srcline;

 if (!file)
  return ((void*)0);

 if (!srcline_full_filename)
  file = gnu_basename(file);

 if (asprintf(&srcline, "%s:%u", file, line) < 0)
  return ((void*)0);

 return srcline;
}
