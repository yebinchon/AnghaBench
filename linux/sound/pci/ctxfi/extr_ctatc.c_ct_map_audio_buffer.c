
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {int dma_bytes; } ;
struct ct_vm {int (* map ) (struct ct_vm*,TYPE_1__*,int ) ;} ;
struct ct_atc_pcm {int vm_block; TYPE_1__* substream; } ;
struct ct_atc {struct ct_vm* vm; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int ENOENT ;
 int stub1 (struct ct_vm*,TYPE_1__*,int ) ;

__attribute__((used)) static int ct_map_audio_buffer(struct ct_atc *atc, struct ct_atc_pcm *apcm)
{
 struct snd_pcm_runtime *runtime;
 struct ct_vm *vm;

 if (!apcm->substream)
  return 0;

 runtime = apcm->substream->runtime;
 vm = atc->vm;

 apcm->vm_block = vm->map(vm, apcm->substream, runtime->dma_bytes);

 if (!apcm->vm_block)
  return -ENOENT;

 return 0;
}
