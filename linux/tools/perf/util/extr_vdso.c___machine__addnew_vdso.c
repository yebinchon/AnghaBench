
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dsos; } ;
struct dso {int dummy; } ;


 int __dsos__add (int *,struct dso*) ;
 struct dso* dso__new (char const*) ;
 int dso__set_long_name (struct dso*,char const*,int) ;

__attribute__((used)) static struct dso *__machine__addnew_vdso(struct machine *machine, const char *short_name,
       const char *long_name)
{
 struct dso *dso;

 dso = dso__new(short_name);
 if (dso != ((void*)0)) {
  __dsos__add(&machine->dsos, dso);
  dso__set_long_name(dso, long_name, 0);
 }

 return dso;
}
