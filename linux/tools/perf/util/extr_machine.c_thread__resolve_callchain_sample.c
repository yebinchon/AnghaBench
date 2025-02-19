
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct thread {int dummy; } ;
struct symbol {int dummy; } ;
struct perf_sample {struct ip_callchain* callchain; struct branch_stack* branch_stack; } ;
struct iterations {int dummy; } ;
struct ip_callchain {int nr; scalar_t__* ips; } ;
struct evsel {int dummy; } ;
struct callchain_cursor {int dummy; } ;
struct branch_stack {int nr; struct branch_entry* entries; } ;
struct branch_entry {int from; scalar_t__ to; int flags; } ;
struct addr_location {int dummy; } ;
struct TYPE_2__ {scalar_t__ order; scalar_t__ branch_callstack; } ;


 int EINVAL ;
 scalar_t__ ORDER_CALLEE ;
 scalar_t__ PERF_CONTEXT_MAX ;
 int PERF_MAX_BRANCH_DEPTH ;
 int PERF_RECORD_MISC_USER ;
 int add_callchain_ip (struct thread*,struct callchain_cursor*,struct symbol**,struct addr_location*,int *,scalar_t__,int,int *,struct iterations*,int) ;
 int arch_skip_callchain_idx (struct thread*,struct ip_callchain*) ;
 TYPE_1__ callchain_param ;
 int find_prev_cpumode (struct ip_callchain*,struct thread*,struct callchain_cursor*,struct symbol**,struct addr_location*,int *,int) ;
 int memset (struct iterations*,int ,int) ;
 int min (int,int) ;
 scalar_t__ perf_evsel__has_branch_callstack (struct evsel*) ;
 int pr_warning (char*) ;
 int remove_loops (struct branch_entry*,int,struct iterations*) ;
 int resolve_lbr_callchain_sample (struct thread*,struct callchain_cursor*,struct perf_sample*,struct symbol**,struct addr_location*,int) ;

__attribute__((used)) static int thread__resolve_callchain_sample(struct thread *thread,
         struct callchain_cursor *cursor,
         struct evsel *evsel,
         struct perf_sample *sample,
         struct symbol **parent,
         struct addr_location *root_al,
         int max_stack)
{
 struct branch_stack *branch = sample->branch_stack;
 struct ip_callchain *chain = sample->callchain;
 int chain_nr = 0;
 u8 cpumode = PERF_RECORD_MISC_USER;
 int i, j, err, nr_entries;
 int skip_idx = -1;
 int first_call = 0;

 if (chain)
  chain_nr = chain->nr;

 if (perf_evsel__has_branch_callstack(evsel)) {
  err = resolve_lbr_callchain_sample(thread, cursor, sample, parent,
         root_al, max_stack);
  if (err)
   return (err < 0) ? err : 0;
 }





 skip_idx = arch_skip_callchain_idx(thread, chain);
 if (branch && callchain_param.branch_callstack) {
  int nr = min(max_stack, (int)branch->nr);
  struct branch_entry be[nr];
  struct iterations iter[nr];

  if (branch->nr > PERF_MAX_BRANCH_DEPTH) {
   pr_warning("corrupted branch chain. skipping...\n");
   goto check_calls;
  }

  for (i = 0; i < nr; i++) {
   if (callchain_param.order == ORDER_CALLEE) {
    be[i] = branch->entries[i];

    if (chain == ((void*)0))
     continue;
    if (i == skip_idx ||
        chain->ips[first_call] >= PERF_CONTEXT_MAX)
     first_call++;
    else if (be[i].from < chain->ips[first_call] &&
        be[i].from >= chain->ips[first_call] - 8)
     first_call++;
   } else
    be[i] = branch->entries[branch->nr - i - 1];
  }

  memset(iter, 0, sizeof(struct iterations) * nr);
  nr = remove_loops(be, nr, iter);

  for (i = 0; i < nr; i++) {
   err = add_callchain_ip(thread, cursor, parent,
            root_al,
            ((void*)0), be[i].to,
            1, &be[i].flags,
            ((void*)0), be[i].from);

   if (!err)
    err = add_callchain_ip(thread, cursor, parent, root_al,
             ((void*)0), be[i].from,
             1, &be[i].flags,
             &iter[i], 0);
   if (err == -EINVAL)
    break;
   if (err)
    return err;
  }

  if (chain_nr == 0)
   return 0;

  chain_nr -= nr;
 }

check_calls:
 if (callchain_param.order != ORDER_CALLEE) {
  err = find_prev_cpumode(chain, thread, cursor, parent, root_al,
     &cpumode, chain->nr - first_call);
  if (err)
   return (err < 0) ? err : 0;
 }
 for (i = first_call, nr_entries = 0;
      i < chain_nr && nr_entries < max_stack; i++) {
  u64 ip;

  if (callchain_param.order == ORDER_CALLEE)
   j = i;
  else
   j = chain->nr - i - 1;





  ip = chain->ips[j];
  if (ip < PERF_CONTEXT_MAX)
                       ++nr_entries;
  else if (callchain_param.order != ORDER_CALLEE) {
   err = find_prev_cpumode(chain, thread, cursor, parent,
      root_al, &cpumode, j);
   if (err)
    return (err < 0) ? err : 0;
   continue;
  }

  err = add_callchain_ip(thread, cursor, parent,
           root_al, &cpumode, ip,
           0, ((void*)0), ((void*)0), 0);

  if (err)
   return (err < 0) ? err : 0;
 }

 return 0;
}
