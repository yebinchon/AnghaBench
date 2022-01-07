
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int temp_file_name; scalar_t__ found; } ;
struct TYPE_5__ {int temp_file_name; scalar_t__ found; } ;
struct TYPE_4__ {int temp_file_name; scalar_t__ found; } ;
struct vdso_info {TYPE_3__ vdsox32; TYPE_2__ vdso32; TYPE_1__ vdso; } ;
struct machine {struct vdso_info* vdso_info; } ;


 int unlink (int ) ;
 int zfree (struct vdso_info**) ;

void machine__exit_vdso(struct machine *machine)
{
 struct vdso_info *vdso_info = machine->vdso_info;

 if (!vdso_info)
  return;

 if (vdso_info->vdso.found)
  unlink(vdso_info->vdso.temp_file_name);







 zfree(&machine->vdso_info);
}
