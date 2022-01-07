
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {int dummy; } ;
struct hist_browser_timer {int dummy; } ;
struct hist_browser {struct annotation_options* annotation_opts; int title; struct perf_env* env; struct hist_browser_timer* hbt; } ;
struct evsel {int dummy; } ;
struct annotation_options {int dummy; } ;


 int evsel__hists (struct evsel*) ;
 struct hist_browser* hist_browser__new (int ) ;
 int hists_browser__scnprintf_title ;

__attribute__((used)) static struct hist_browser *
perf_evsel_browser__new(struct evsel *evsel,
   struct hist_browser_timer *hbt,
   struct perf_env *env,
   struct annotation_options *annotation_opts)
{
 struct hist_browser *browser = hist_browser__new(evsel__hists(evsel));

 if (browser) {
  browser->hbt = hbt;
  browser->env = env;
  browser->title = hists_browser__scnprintf_title;
  browser->annotation_opts = annotation_opts;
 }
 return browser;
}
