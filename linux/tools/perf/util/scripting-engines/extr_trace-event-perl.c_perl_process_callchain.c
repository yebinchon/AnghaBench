
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_sample {int callchain; } ;
struct map {TYPE_2__* dso; } ;
struct evsel {int dummy; } ;
struct callchain_cursor_node {struct map* map; TYPE_1__* sym; int ip; } ;
struct addr_location {int thread; } ;
struct TYPE_6__ {scalar_t__ show_kernel_path; int use_callchain; } ;
struct TYPE_5__ {char* long_name; char* name; } ;
struct TYPE_4__ {int namelen; int name; int binding; int end; int start; } ;
typedef int SV ;
typedef int HV ;
typedef int AV ;


 int av_push (int *,int *) ;
 int callchain_cursor ;
 int callchain_cursor_advance (int *) ;
 int callchain_cursor_commit (int *) ;
 struct callchain_cursor_node* callchain_cursor_current (int *) ;
 int hv_stores (int *,char*,int *) ;
 int hv_undef (int *) ;
 int * newAV () ;
 int * newHV () ;
 int * newRV_noinc (int *) ;
 int * newSVpv (char const*,int ) ;
 int * newSVpvn (int ,int ) ;
 int * newSVuv (int ) ;
 int pr_err (char*) ;
 int scripting_max_stack ;
 TYPE_3__ symbol_conf ;
 scalar_t__ thread__resolve_callchain (int ,int *,struct evsel*,struct perf_sample*,int *,int *,int ) ;

__attribute__((used)) static SV *perl_process_callchain(struct perf_sample *sample,
      struct evsel *evsel,
      struct addr_location *al)
{
 AV *list;

 list = newAV();
 if (!list)
  goto exit;

 if (!symbol_conf.use_callchain || !sample->callchain)
  goto exit;

 if (thread__resolve_callchain(al->thread, &callchain_cursor, evsel,
          sample, ((void*)0), ((void*)0), scripting_max_stack) != 0) {
  pr_err("Failed to resolve callchain. Skipping\n");
  goto exit;
 }
 callchain_cursor_commit(&callchain_cursor);


 while (1) {
  HV *elem;
  struct callchain_cursor_node *node;
  node = callchain_cursor_current(&callchain_cursor);
  if (!node)
   break;

  elem = newHV();
  if (!elem)
   goto exit;

  if (!hv_stores(elem, "ip", newSVuv(node->ip))) {
   hv_undef(elem);
   goto exit;
  }

  if (node->sym) {
   HV *sym = newHV();
   if (!sym) {
    hv_undef(elem);
    goto exit;
   }
   if (!hv_stores(sym, "start", newSVuv(node->sym->start)) ||
       !hv_stores(sym, "end", newSVuv(node->sym->end)) ||
       !hv_stores(sym, "binding", newSVuv(node->sym->binding)) ||
       !hv_stores(sym, "name", newSVpvn(node->sym->name,
        node->sym->namelen)) ||
       !hv_stores(elem, "sym", newRV_noinc((SV*)sym))) {
    hv_undef(sym);
    hv_undef(elem);
    goto exit;
   }
  }

  if (node->map) {
   struct map *map = node->map;
   const char *dsoname = "[unknown]";
   if (map && map->dso) {
    if (symbol_conf.show_kernel_path && map->dso->long_name)
     dsoname = map->dso->long_name;
    else
     dsoname = map->dso->name;
   }
   if (!hv_stores(elem, "dso", newSVpv(dsoname,0))) {
    hv_undef(elem);
    goto exit;
   }
  }

  callchain_cursor_advance(&callchain_cursor);
  av_push(list, newRV_noinc((SV*)elem));
 }

exit:
 return newRV_noinc((SV*)list);
}
