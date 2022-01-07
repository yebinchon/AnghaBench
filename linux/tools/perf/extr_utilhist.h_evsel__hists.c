
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;
struct hists_evsel {struct hists hists; } ;
struct evsel {int dummy; } ;



__attribute__((used)) static inline struct hists *evsel__hists(struct evsel *evsel)
{
 struct hists_evsel *hevsel = (struct hists_evsel *)evsel;
 return &hevsel->hists;
}
