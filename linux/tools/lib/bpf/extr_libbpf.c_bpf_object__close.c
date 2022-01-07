
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; TYPE_2__* rodata; } ;
struct bpf_object {size_t nr_maps; size_t nr_programs; int list; TYPE_2__* programs; TYPE_2__* maps; TYPE_1__ sections; int btf_ext; int btf; int priv; int (* clear_priv ) (struct bpf_object*,int ) ;} ;
struct TYPE_6__ {int (* clear_priv ) (TYPE_2__*,int *) ;int * priv; struct TYPE_6__* name; } ;


 int bpf_object__elf_finish (struct bpf_object*) ;
 int bpf_object__unload (struct bpf_object*) ;
 int bpf_program__exit (TYPE_2__*) ;
 int btf__free (int ) ;
 int btf_ext__free (int ) ;
 int free (struct bpf_object*) ;
 int list_del (int *) ;
 int stub1 (struct bpf_object*,int ) ;
 int stub2 (TYPE_2__*,int *) ;
 int zfree (TYPE_2__**) ;

void bpf_object__close(struct bpf_object *obj)
{
 size_t i;

 if (!obj)
  return;

 if (obj->clear_priv)
  obj->clear_priv(obj, obj->priv);

 bpf_object__elf_finish(obj);
 bpf_object__unload(obj);
 btf__free(obj->btf);
 btf_ext__free(obj->btf_ext);

 for (i = 0; i < obj->nr_maps; i++) {
  zfree(&obj->maps[i].name);
  if (obj->maps[i].clear_priv)
   obj->maps[i].clear_priv(&obj->maps[i],
      obj->maps[i].priv);
  obj->maps[i].priv = ((void*)0);
  obj->maps[i].clear_priv = ((void*)0);
 }

 zfree(&obj->sections.rodata);
 zfree(&obj->sections.data);
 zfree(&obj->maps);
 obj->nr_maps = 0;

 if (obj->programs && obj->nr_programs) {
  for (i = 0; i < obj->nr_programs; i++)
   bpf_program__exit(&obj->programs[i]);
 }
 zfree(&obj->programs);

 list_del(&obj->list);
 free(obj);
}
