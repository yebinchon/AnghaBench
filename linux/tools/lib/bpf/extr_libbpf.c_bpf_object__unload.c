
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_object {size_t nr_maps; size_t nr_programs; int * programs; TYPE_1__* maps; } ;
struct TYPE_2__ {int fd; } ;


 int EINVAL ;
 int bpf_program__unload (int *) ;
 int zclose (int ) ;

int bpf_object__unload(struct bpf_object *obj)
{
 size_t i;

 if (!obj)
  return -EINVAL;

 for (i = 0; i < obj->nr_maps; i++)
  zclose(obj->maps[i].fd);

 for (i = 0; i < obj->nr_programs; i++)
  bpf_program__unload(&obj->programs[i]);

 return 0;
}
