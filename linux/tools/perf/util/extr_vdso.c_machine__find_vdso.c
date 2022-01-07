
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct machine {int dsos; } ;
struct dso {int dummy; } ;
typedef enum dso_type { ____Placeholder_dso_type } dso_type ;


 int DSO__NAME_VDSO ;
 int DSO__NAME_VDSO32 ;
 int DSO__NAME_VDSOX32 ;




 struct dso* __dsos__find (int *,int ,int) ;
 int dso__type (struct dso*,struct machine*) ;
 int machine__thread_dso_type (struct machine*,struct thread*) ;

__attribute__((used)) static struct dso *machine__find_vdso(struct machine *machine,
          struct thread *thread)
{
 struct dso *dso = ((void*)0);
 enum dso_type dso_type;

 dso_type = machine__thread_dso_type(machine, thread);
 switch (dso_type) {
 case 131:
  dso = __dsos__find(&machine->dsos, DSO__NAME_VDSO32, 1);
  if (!dso) {
   dso = __dsos__find(&machine->dsos, DSO__NAME_VDSO,
        1);
   if (dso && dso_type != dso__type(dso, machine))
    dso = ((void*)0);
  }
  break;
 case 128:
  dso = __dsos__find(&machine->dsos, DSO__NAME_VDSOX32, 1);
  break;
 case 130:
 case 129:
 default:
  dso = __dsos__find(&machine->dsos, DSO__NAME_VDSO, 1);
  break;
 }

 return dso;
}
