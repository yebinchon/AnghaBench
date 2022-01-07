
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rb_root {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
typedef int GtkTreeStore ;
typedef int GtkTreeIter ;


 scalar_t__ CHAIN_FLAT ;
 scalar_t__ CHAIN_FOLDED ;
 TYPE_1__ callchain_param ;
 int perf_gtk__add_callchain_flat (struct rb_root*,int *,int *,int,int ) ;
 int perf_gtk__add_callchain_folded (struct rb_root*,int *,int *,int,int ) ;
 int perf_gtk__add_callchain_graph (struct rb_root*,int *,int *,int,int ) ;

__attribute__((used)) static void perf_gtk__add_callchain(struct rb_root *root, GtkTreeStore *store,
        GtkTreeIter *parent, int col, u64 total)
{
 if (callchain_param.mode == CHAIN_FLAT)
  perf_gtk__add_callchain_flat(root, store, parent, col, total);
 else if (callchain_param.mode == CHAIN_FOLDED)
  perf_gtk__add_callchain_folded(root, store, parent, col, total);
 else
  perf_gtk__add_callchain_graph(root, store, parent, col, total);
}
