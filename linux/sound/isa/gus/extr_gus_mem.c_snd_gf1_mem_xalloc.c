
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gf1_mem_block {scalar_t__ ptr; struct snd_gf1_mem_block* next; struct snd_gf1_mem_block* prev; } ;
struct snd_gf1_mem {struct snd_gf1_mem_block* last; struct snd_gf1_mem_block* first; int memory_mutex; } ;


 int GFP_KERNEL ;
 struct snd_gf1_mem_block* kmalloc (int,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct snd_gf1_mem_block *snd_gf1_mem_xalloc(struct snd_gf1_mem * alloc,
            struct snd_gf1_mem_block * block)
{
 struct snd_gf1_mem_block *pblock, *nblock;

 nblock = kmalloc(sizeof(struct snd_gf1_mem_block), GFP_KERNEL);
 if (nblock == ((void*)0))
  return ((void*)0);
 *nblock = *block;
 pblock = alloc->first;
 while (pblock) {
  if (pblock->ptr > nblock->ptr) {
   nblock->prev = pblock->prev;
   nblock->next = pblock;
   pblock->prev = nblock;
   if (pblock == alloc->first)
    alloc->first = nblock;
   else
    nblock->prev->next = nblock;
   mutex_unlock(&alloc->memory_mutex);
   return ((void*)0);
  }
  pblock = pblock->next;
 }
 nblock->next = ((void*)0);
 if (alloc->last == ((void*)0)) {
  nblock->prev = ((void*)0);
  alloc->first = alloc->last = nblock;
 } else {
  nblock->prev = alloc->last;
  alloc->last->next = nblock;
  alloc->last = nblock;
 }
 return nblock;
}
