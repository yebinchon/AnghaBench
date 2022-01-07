
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct perf_event_attr {int config; int type; } ;
struct parse_events_state {int idx; int error; } ;
struct list_head {int dummy; } ;
typedef int attr ;


 int EINVAL ;
 int ENOMEM ;
 int LIST_HEAD (int ) ;
 int add_event (struct list_head*,int *,struct perf_event_attr*,int ,int *) ;
 scalar_t__ config_attr (struct perf_event_attr*,struct list_head*,int ,int ) ;
 int config_term_common ;
 int config_terms ;
 int get_config_name (struct list_head*) ;
 scalar_t__ get_config_terms (struct list_head*,int *) ;
 int memset (struct perf_event_attr*,int ,int) ;

int parse_events_add_numeric(struct parse_events_state *parse_state,
        struct list_head *list,
        u32 type, u64 config,
        struct list_head *head_config)
{
 struct perf_event_attr attr;
 LIST_HEAD(config_terms);

 memset(&attr, 0, sizeof(attr));
 attr.type = type;
 attr.config = config;

 if (head_config) {
  if (config_attr(&attr, head_config, parse_state->error,
    config_term_common))
   return -EINVAL;

  if (get_config_terms(head_config, &config_terms))
   return -ENOMEM;
 }

 return add_event(list, &parse_state->idx, &attr,
    get_config_name(head_config), &config_terms);
}
