
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dso {scalar_t__ a2l_fails; scalar_t__ has_srcline; } ;


 scalar_t__ A2L_FAIL_LIMIT ;
 int addr2line (char const*,int ,char**,unsigned int*,struct dso*,int,int *,int *) ;
 int dso__free_a2l (struct dso*) ;
 char* dso__name (struct dso*) ;

char *get_srcline_split(struct dso *dso, u64 addr, unsigned *line)
{
 char *file = ((void*)0);
 const char *dso_name;

 if (!dso->has_srcline)
  goto out;

 dso_name = dso__name(dso);
 if (dso_name == ((void*)0))
  goto out;

 if (!addr2line(dso_name, addr, &file, line, dso, 1, ((void*)0), ((void*)0)))
  goto out;

 dso->a2l_fails = 0;
 return file;

out:
 if (dso->a2l_fails && ++dso->a2l_fails > A2L_FAIL_LIMIT) {
  dso->has_srcline = 0;
  dso__free_a2l(dso);
 }

 return ((void*)0);
}
