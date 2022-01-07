
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int node; } ;
struct evsel {TYPE_1__ core; int config_terms; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct evsel*) ;
 int LIST_HEAD (int ) ;
 int PTR_ERR (struct evsel*) ;
 int config_terms ;
 scalar_t__ get_config_terms (struct list_head*,int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_splice (int *,int *) ;
 struct evsel* perf_evsel__newtp_idx (char const*,char const*,int ) ;
 int tracepoint_error (struct parse_events_error*,int,char const*,char const*) ;

__attribute__((used)) static int add_tracepoint(struct list_head *list, int *idx,
     const char *sys_name, const char *evt_name,
     struct parse_events_error *err,
     struct list_head *head_config)
{
 struct evsel *evsel;

 evsel = perf_evsel__newtp_idx(sys_name, evt_name, (*idx)++);
 if (IS_ERR(evsel)) {
  tracepoint_error(err, PTR_ERR(evsel), sys_name, evt_name);
  return PTR_ERR(evsel);
 }

 if (head_config) {
  LIST_HEAD(config_terms);

  if (get_config_terms(head_config, &config_terms))
   return -ENOMEM;
  list_splice(&config_terms, &evsel->config_terms);
 }

 list_add_tail(&evsel->core.node, list);
 return 0;
}
