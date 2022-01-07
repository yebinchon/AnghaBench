
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symbol; } ;
struct probe_trace_event {TYPE_1__ point; } ;
struct probe_cache_entry {int node; int tevlist; } ;
struct probe_cache {int entries; } ;
struct perf_probe_event {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int free (char*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int pr_debug (char*,...) ;
 struct probe_cache_entry* probe_cache__find (struct probe_cache*,struct perf_probe_event*) ;
 int probe_cache_entry__delete (struct probe_cache_entry*) ;
 struct probe_cache_entry* probe_cache_entry__new (struct perf_probe_event*) ;
 int strlist__add (int ,char*) ;
 char* synthesize_probe_trace_command (struct probe_trace_event*) ;

int probe_cache__add_entry(struct probe_cache *pcache,
      struct perf_probe_event *pev,
      struct probe_trace_event *tevs, int ntevs)
{
 struct probe_cache_entry *entry = ((void*)0);
 char *command;
 int i, ret = 0;

 if (!pcache || !pev || !tevs || ntevs <= 0) {
  ret = -EINVAL;
  goto out_err;
 }


 entry = probe_cache__find(pcache, pev);
 if (entry) {
  list_del_init(&entry->node);
  probe_cache_entry__delete(entry);
 }

 ret = -ENOMEM;
 entry = probe_cache_entry__new(pev);
 if (!entry)
  goto out_err;

 for (i = 0; i < ntevs; i++) {
  if (!tevs[i].point.symbol)
   continue;

  command = synthesize_probe_trace_command(&tevs[i]);
  if (!command)
   goto out_err;
  strlist__add(entry->tevlist, command);
  free(command);
 }
 list_add_tail(&entry->node, &pcache->entries);
 pr_debug("Added probe cache: %d\n", ntevs);
 return 0;

out_err:
 pr_debug("Failed to add probe caches\n");
 probe_cache_entry__delete(entry);
 return ret;
}
