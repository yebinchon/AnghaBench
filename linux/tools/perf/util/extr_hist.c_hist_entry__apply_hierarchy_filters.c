
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int hists; } ;


 int HIST_FILTER__DSO ;
 int HIST_FILTER__SYMBOL ;
 int HIST_FILTER__THREAD ;
 int check_thread_entry ;
 int hist_entry__check_and_remove_filter (struct hist_entry*,int ,int ) ;
 int hists__apply_filters (int ,struct hist_entry*) ;
 int perf_hpp__is_dso_entry ;
 int perf_hpp__is_sym_entry ;

__attribute__((used)) static void hist_entry__apply_hierarchy_filters(struct hist_entry *he)
{
 hist_entry__check_and_remove_filter(he, HIST_FILTER__THREAD,
         check_thread_entry);

 hist_entry__check_and_remove_filter(he, HIST_FILTER__DSO,
         perf_hpp__is_dso_entry);

 hist_entry__check_and_remove_filter(he, HIST_FILTER__SYMBOL,
         perf_hpp__is_sym_entry);

 hists__apply_filters(he->hists, he);
}
