
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;
struct evsel {int dummy; } ;


 int __hists__init (struct hists*,int *) ;
 struct hists* evsel__hists (struct evsel*) ;
 int perf_hpp_list ;

__attribute__((used)) static int hists_evsel__init(struct evsel *evsel)
{
 struct hists *hists = evsel__hists(evsel);

 __hists__init(hists, &perf_hpp_list);
 return 0;
}
