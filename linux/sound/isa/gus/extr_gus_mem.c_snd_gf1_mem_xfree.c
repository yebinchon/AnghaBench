
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gf1_mem_block {struct snd_gf1_mem_block* name; struct snd_gf1_mem_block* next; struct snd_gf1_mem_block* prev; scalar_t__ share; } ;
struct snd_gf1_mem {struct snd_gf1_mem_block* last; struct snd_gf1_mem_block* first; int memory_mutex; } ;


 int kfree (struct snd_gf1_mem_block*) ;
 int mutex_unlock (int *) ;

int snd_gf1_mem_xfree(struct snd_gf1_mem * alloc, struct snd_gf1_mem_block * block)
{
 if (block->share) {
  block->share--;
  mutex_unlock(&alloc->memory_mutex);
  return 0;
 }
 if (alloc->first == block) {
  alloc->first = block->next;
  if (block->next)
   block->next->prev = ((void*)0);
 } else {
  block->prev->next = block->next;
  if (block->next)
   block->next->prev = block->prev;
 }
 if (alloc->last == block) {
  alloc->last = block->prev;
  if (block->prev)
   block->prev->next = ((void*)0);
 } else {
  block->next->prev = block->prev;
  if (block->prev)
   block->prev->next = block->next;
 }
 kfree(block->name);
 kfree(block);
 return 0;
}
