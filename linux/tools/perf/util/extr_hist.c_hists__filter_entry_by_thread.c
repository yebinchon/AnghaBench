
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int * thread_filter; } ;
struct hist_entry {int filtered; int * thread; } ;


 int HIST_FILTER__THREAD ;

__attribute__((used)) static bool hists__filter_entry_by_thread(struct hists *hists,
       struct hist_entry *he)
{
 if (hists->thread_filter != ((void*)0) &&
     he->thread != hists->thread_filter) {
  he->filtered |= (1 << HIST_FILTER__THREAD);
  return 1;
 }

 return 0;
}
