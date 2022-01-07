
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {int dummy; } ;
struct hist_entry {TYPE_1__* hists; } ;
struct TYPE_2__ {int hpp_list; } ;


 int __hist_entry__snprintf (struct hist_entry*,struct perf_hpp*,int ) ;

__attribute__((used)) static int hist_entry__snprintf(struct hist_entry *he, struct perf_hpp *hpp)
{
 return __hist_entry__snprintf(he, hpp, he->hists->hpp_list);
}
