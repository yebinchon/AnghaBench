
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {int * last_match; int dead; scalar_t__ nr; int lock; int entries; } ;
struct machine {struct threads* threads; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 int THREADS__TABLE_SIZE ;
 int init_rwsem (int *) ;

__attribute__((used)) static void machine__threads_init(struct machine *machine)
{
 int i;

 for (i = 0; i < THREADS__TABLE_SIZE; i++) {
  struct threads *threads = &machine->threads[i];
  threads->entries = RB_ROOT_CACHED;
  init_rwsem(&threads->lock);
  threads->nr = 0;
  INIT_LIST_HEAD(&threads->dead);
  threads->last_match = ((void*)0);
 }
}
