
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int event_alloc_failures; int event_alloc_success; int max_used; int counter; int total_elements; } ;
struct snd_info_buffer {int dummy; } ;


 int atomic_read (int *) ;
 int snd_iprintf (struct snd_info_buffer*,char*,char*,int ) ;

void snd_seq_info_pool(struct snd_info_buffer *buffer,
         struct snd_seq_pool *pool, char *space)
{
 if (pool == ((void*)0))
  return;
 snd_iprintf(buffer, "%sPool size          : %d\n", space, pool->total_elements);
 snd_iprintf(buffer, "%sCells in use       : %d\n", space, atomic_read(&pool->counter));
 snd_iprintf(buffer, "%sPeak cells in use  : %d\n", space, pool->max_used);
 snd_iprintf(buffer, "%sAlloc success      : %d\n", space, pool->event_alloc_success);
 snd_iprintf(buffer, "%sAlloc failures     : %d\n", space, pool->event_alloc_failures);
}
