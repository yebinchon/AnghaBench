
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ obj_buf_sz; int * obj_buf; int fd; scalar_t__ nr_reloc; int reloc; int * bss; int * rodata; int * data; int * symbols; int * elf; } ;
struct bpf_object {TYPE_1__ efile; } ;


 int elf_end (int *) ;
 int obj_elf_valid (struct bpf_object*) ;
 int zclose (int ) ;
 int zfree (int *) ;

__attribute__((used)) static void bpf_object__elf_finish(struct bpf_object *obj)
{
 if (!obj_elf_valid(obj))
  return;

 if (obj->efile.elf) {
  elf_end(obj->efile.elf);
  obj->efile.elf = ((void*)0);
 }
 obj->efile.symbols = ((void*)0);
 obj->efile.data = ((void*)0);
 obj->efile.rodata = ((void*)0);
 obj->efile.bss = ((void*)0);

 zfree(&obj->efile.reloc);
 obj->efile.nr_reloc = 0;
 zclose(obj->efile.fd);
 obj->efile.obj_buf = ((void*)0);
 obj->efile.obj_buf_sz = 0;
}
