
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct machine {TYPE_1__ dsos; } ;
struct kmod_path {int name; } ;
struct dso {int dummy; } ;


 struct dso* __dsos__addnew (TYPE_1__*,int ) ;
 struct dso* __dsos__find (TYPE_1__*,int ,int) ;
 int down_write (int *) ;
 int dso__get (struct dso*) ;
 int dso__set_long_name (struct dso*,int ,int) ;
 int dso__set_module_info (struct dso*,struct kmod_path*,struct machine*) ;
 int strdup (char const*) ;
 int up_write (int *) ;

__attribute__((used)) static struct dso *machine__findnew_module_dso(struct machine *machine,
            struct kmod_path *m,
            const char *filename)
{
 struct dso *dso;

 down_write(&machine->dsos.lock);

 dso = __dsos__find(&machine->dsos, m->name, 1);
 if (!dso) {
  dso = __dsos__addnew(&machine->dsos, m->name);
  if (dso == ((void*)0))
   goto out_unlock;

  dso__set_module_info(dso, m, machine);
  dso__set_long_name(dso, strdup(filename), 1);
 }

 dso__get(dso);
out_unlock:
 up_write(&machine->dsos.lock);
 return dso;
}
