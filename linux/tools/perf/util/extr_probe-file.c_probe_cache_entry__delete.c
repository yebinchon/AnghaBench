
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_cache_entry {int spev; int pev; int tevlist; int node; } ;


 int BUG_ON (int) ;
 int clear_perf_probe_event (int *) ;
 int free (struct probe_cache_entry*) ;
 int list_empty (int *) ;
 int strlist__delete (int ) ;
 int zfree (int *) ;

__attribute__((used)) static void probe_cache_entry__delete(struct probe_cache_entry *entry)
{
 if (entry) {
  BUG_ON(!list_empty(&entry->node));

  strlist__delete(entry->tevlist);
  clear_perf_probe_event(&entry->pev);
  zfree(&entry->spev);
  free(entry);
 }
}
