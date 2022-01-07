
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {char* symsrc_filename; char* long_name; } ;


 int strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *dso__name(struct dso *dso)
{
 const char *dso_name;

 if (dso->symsrc_filename)
  dso_name = dso->symsrc_filename;
 else
  dso_name = dso->long_name;

 if (dso_name[0] == '[')
  return ((void*)0);

 if (!strncmp(dso_name, "/tmp/perf-", 10))
  return ((void*)0);

 return dso_name;
}
