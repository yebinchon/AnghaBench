
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct perf_sample {int dummy; } ;
struct mem_info {int dummy; } ;
struct hists {int dummy; } ;
struct hist_entry_ops {int dummy; } ;
struct hist_entry {int dummy; } ;
struct branch_info {int dummy; } ;
struct addr_location {int dummy; } ;


 struct hist_entry* __hists__add_entry (struct hists*,struct addr_location*,struct symbol*,struct branch_info*,struct mem_info*,int *,struct perf_sample*,int,struct hist_entry_ops*) ;

struct hist_entry *hists__add_entry_ops(struct hists *hists,
     struct hist_entry_ops *ops,
     struct addr_location *al,
     struct symbol *sym_parent,
     struct branch_info *bi,
     struct mem_info *mi,
     struct perf_sample *sample,
     bool sample_self)
{
 return __hists__add_entry(hists, al, sym_parent, bi, mi, ((void*)0),
      sample, sample_self, ops);
}
