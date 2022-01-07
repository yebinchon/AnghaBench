
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct ct_vm_block {unsigned int addr; unsigned int size; } ;
struct ct_vm {TYPE_2__* ptp; } ;
struct ct_atc {TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ area; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int CT_PAGE_SHIFT ;
 int dev_err (int ,char*) ;
 struct ct_vm_block* get_vm_block (struct ct_vm*,int,struct ct_atc*) ;
 unsigned long snd_pcm_sgbuf_get_addr (struct snd_pcm_substream*,unsigned int) ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static struct ct_vm_block *
ct_vm_map(struct ct_vm *vm, struct snd_pcm_substream *substream, int size)
{
 struct ct_vm_block *block;
 unsigned int pte_start;
 unsigned i, pages;
 unsigned long *ptp;
 struct ct_atc *atc = snd_pcm_substream_chip(substream);

 block = get_vm_block(vm, size, atc);
 if (block == ((void*)0)) {
  dev_err(atc->card->dev,
   "No virtual memory block that is big enough to allocate!\n");
  return ((void*)0);
 }

 ptp = (unsigned long *)vm->ptp[0].area;
 pte_start = (block->addr >> CT_PAGE_SHIFT);
 pages = block->size >> CT_PAGE_SHIFT;
 for (i = 0; i < pages; i++) {
  unsigned long addr;
  addr = snd_pcm_sgbuf_get_addr(substream, i << CT_PAGE_SHIFT);
  ptp[pte_start + i] = addr;
 }

 block->size = size;
 return block;
}
