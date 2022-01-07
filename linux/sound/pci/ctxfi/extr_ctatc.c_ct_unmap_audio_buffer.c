
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_vm {int (* unmap ) (struct ct_vm*,int *) ;} ;
struct ct_atc_pcm {int * vm_block; } ;
struct ct_atc {struct ct_vm* vm; } ;


 int stub1 (struct ct_vm*,int *) ;

__attribute__((used)) static void ct_unmap_audio_buffer(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct ct_vm *vm;

 if (!apcm->vm_block)
  return;

 vm = atc->vm;

 vm->unmap(vm, apcm->vm_block);

 apcm->vm_block = ((void*)0);
}
