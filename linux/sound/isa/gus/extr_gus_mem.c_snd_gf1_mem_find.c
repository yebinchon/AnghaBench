
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gf1_mem_block {unsigned int ptr; unsigned int size; struct snd_gf1_mem_block* next; int prev; int * name; scalar_t__* share_id; scalar_t__ share; int owner; int flags; } ;
struct snd_gf1_mem {struct snd_gf1_mem_block* first; struct snd_gf1_bank_info* banks_8; struct snd_gf1_bank_info* banks_16; } ;
struct snd_gf1_bank_info {unsigned int address; unsigned int size; } ;


 unsigned int ALIGN (unsigned int,int) ;
 int ENOMEM ;
 int SNDRV_GF1_MEM_BLOCK_16BIT ;
 int SNDRV_GF1_MEM_OWNER_DRIVER ;

__attribute__((used)) static int snd_gf1_mem_find(struct snd_gf1_mem * alloc,
       struct snd_gf1_mem_block * block,
       unsigned int size, int w_16, int align)
{
 struct snd_gf1_bank_info *info = w_16 ? alloc->banks_16 : alloc->banks_8;
 unsigned int idx, boundary;
 int size1;
 struct snd_gf1_mem_block *pblock;
 unsigned int ptr1, ptr2;

 if (w_16 && align < 2)
  align = 2;
 block->flags = w_16 ? SNDRV_GF1_MEM_BLOCK_16BIT : 0;
 block->owner = SNDRV_GF1_MEM_OWNER_DRIVER;
 block->share = 0;
 block->share_id[0] = block->share_id[1] =
 block->share_id[2] = block->share_id[3] = 0;
 block->name = ((void*)0);
 block->prev = block->next = ((void*)0);
 for (pblock = alloc->first, idx = 0; pblock; pblock = pblock->next) {
  while (pblock->ptr >= (boundary = info[idx].address + info[idx].size))
   idx++;
  while (pblock->ptr + pblock->size >= (boundary = info[idx].address + info[idx].size))
   idx++;
  ptr2 = boundary;
  if (pblock->next) {
   if (pblock->ptr + pblock->size == pblock->next->ptr)
    continue;
   if (pblock->next->ptr < boundary)
    ptr2 = pblock->next->ptr;
  }
  ptr1 = ALIGN(pblock->ptr + pblock->size, align);
  if (ptr1 >= ptr2)
   continue;
  size1 = ptr2 - ptr1;
  if ((int)size <= size1) {
   block->ptr = ptr1;
   block->size = size;
   return 0;
  }
 }
 while (++idx < 4) {
  if (size <= info[idx].size) {

   block->ptr = info[idx].address;
   block->size = size;
   return 0;
  }
 }
 return -ENOMEM;
}
