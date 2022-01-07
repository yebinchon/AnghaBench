
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_cache_entry {int pev; int spev; int tevlist; int node; } ;
struct perf_probe_event {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ perf_probe_event__copy (int *,struct perf_probe_event*) ;
 int probe_cache_entry__delete (struct probe_cache_entry*) ;
 int strlist__new (int *,int *) ;
 int synthesize_perf_probe_command (struct perf_probe_event*) ;
 struct probe_cache_entry* zalloc (int) ;
 int zfree (struct probe_cache_entry**) ;

__attribute__((used)) static struct probe_cache_entry *
probe_cache_entry__new(struct perf_probe_event *pev)
{
 struct probe_cache_entry *entry = zalloc(sizeof(*entry));

 if (entry) {
  INIT_LIST_HEAD(&entry->node);
  entry->tevlist = strlist__new(((void*)0), ((void*)0));
  if (!entry->tevlist)
   zfree(&entry);
  else if (pev) {
   entry->spev = synthesize_perf_probe_command(pev);
   if (!entry->spev ||
       perf_probe_event__copy(&entry->pev, pev) < 0) {
    probe_cache_entry__delete(entry);
    return ((void*)0);
   }
  }
 }

 return entry;
}
