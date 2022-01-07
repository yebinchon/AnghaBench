
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdso_info {int vdso; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct machine {TYPE_1__ dsos; struct vdso_info* vdso_info; } ;
struct dso {int dummy; } ;


 int DSO__NAME_VDSO ;
 struct dso* __dsos__find (TYPE_1__*,int ,int) ;
 struct dso* __machine__addnew_vdso (struct machine*,int ,char*) ;
 scalar_t__ __machine__findnew_vdso_compat (struct machine*,struct thread*,struct vdso_info*,struct dso**) ;
 int down_write (int *) ;
 int dso__get (struct dso*) ;
 char* get_file (int *) ;
 struct dso* machine__find_vdso (struct machine*,struct thread*) ;
 int up_write (int *) ;
 struct vdso_info* vdso_info__new () ;

struct dso *machine__findnew_vdso(struct machine *machine,
      struct thread *thread)
{
 struct vdso_info *vdso_info;
 struct dso *dso = ((void*)0);

 down_write(&machine->dsos.lock);
 if (!machine->vdso_info)
  machine->vdso_info = vdso_info__new();

 vdso_info = machine->vdso_info;
 if (!vdso_info)
  goto out_unlock;

 dso = machine__find_vdso(machine, thread);
 if (dso)
  goto out_unlock;






 dso = __dsos__find(&machine->dsos, DSO__NAME_VDSO, 1);
 if (!dso) {
  char *file;

  file = get_file(&vdso_info->vdso);
  if (file)
   dso = __machine__addnew_vdso(machine, DSO__NAME_VDSO, file);
 }

out_unlock:
 dso__get(dso);
 up_write(&machine->dsos.lock);
 return dso;
}
