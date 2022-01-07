
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct thread {int dummy; } ;
struct perf_sample {int callchain; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;
struct db_export {TYPE_4__* cpr; } ;
struct callchain_cursor_node {int ip; TYPE_1__* map; scalar_t__ sym; } ;
struct call_path {int dummy; } ;
struct addr_location {scalar_t__ sym; int addr; TYPE_1__* map; struct machine* machine; } ;
typedef enum chain_order { ____Placeholder_chain_order } chain_order ;
typedef int al ;
struct TYPE_8__ {struct call_path call_path; } ;
struct TYPE_7__ {int order; } ;
struct TYPE_6__ {int use_callchain; } ;
struct TYPE_5__ {int dso; } ;


 int ORDER_CALLER ;
 int PERF_MAX_STACK_DEPTH ;
 struct call_path* call_path__findnew (TYPE_4__*,struct call_path*,scalar_t__,int ,int ) ;
 int callchain_cursor ;
 int callchain_cursor_advance (int *) ;
 int callchain_cursor_commit (int *) ;
 struct callchain_cursor_node* callchain_cursor_current (int *) ;
 TYPE_3__ callchain_param ;
 int db_ids_from_al (struct db_export*,struct addr_location*,int *,int *,int *) ;
 scalar_t__ dso__find_symbol (int ,int ) ;
 int machine__kernel_start (struct machine*) ;
 int memset (struct addr_location*,int ,int) ;
 TYPE_2__ symbol_conf ;
 int thread__resolve_callchain (struct thread*,int *,struct evsel*,struct perf_sample*,int *,int *,int ) ;

__attribute__((used)) static struct call_path *call_path_from_sample(struct db_export *dbe,
            struct machine *machine,
            struct thread *thread,
            struct perf_sample *sample,
            struct evsel *evsel)
{
 u64 kernel_start = machine__kernel_start(machine);
 struct call_path *current = &dbe->cpr->call_path;
 enum chain_order saved_order = callchain_param.order;
 int err;

 if (!symbol_conf.use_callchain || !sample->callchain)
  return ((void*)0);






 callchain_param.order = ORDER_CALLER;
 err = thread__resolve_callchain(thread, &callchain_cursor, evsel,
     sample, ((void*)0), ((void*)0), PERF_MAX_STACK_DEPTH);
 if (err) {
  callchain_param.order = saved_order;
  return ((void*)0);
 }
 callchain_cursor_commit(&callchain_cursor);

 while (1) {
  struct callchain_cursor_node *node;
  struct addr_location al;
  u64 dso_db_id = 0, sym_db_id = 0, offset = 0;

  memset(&al, 0, sizeof(al));

  node = callchain_cursor_current(&callchain_cursor);
  if (!node)
   break;





  al.sym = node->sym;
  al.map = node->map;
  al.machine = machine;
  al.addr = node->ip;

  if (al.map && !al.sym)
   al.sym = dso__find_symbol(al.map->dso, al.addr);

  db_ids_from_al(dbe, &al, &dso_db_id, &sym_db_id, &offset);


  current = call_path__findnew(dbe->cpr, current,
          al.sym, node->ip,
          kernel_start);

  callchain_cursor_advance(&callchain_cursor);
 }


 callchain_param.order = saved_order;

 if (current == &dbe->cpr->call_path) {

  return ((void*)0);
 }

 return current;
}
