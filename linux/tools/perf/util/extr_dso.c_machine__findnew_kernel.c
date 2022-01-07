
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct dso {int kernel; } ;


 int dso__set_short_name (struct dso*,char const*,int) ;
 struct dso* machine__findnew_dso (struct machine*,char const*) ;

struct dso *machine__findnew_kernel(struct machine *machine, const char *name,
        const char *short_name, int dso_type)
{



 struct dso *dso = machine__findnew_dso(machine, name);





 if (dso != ((void*)0)) {
  dso__set_short_name(dso, short_name, 0);
  dso->kernel = dso_type;
 }

 return dso;
}
