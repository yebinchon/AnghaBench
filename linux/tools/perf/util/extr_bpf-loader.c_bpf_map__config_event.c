
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_term {scalar_t__ type_val; int err_val; } ;
struct evlist {int dummy; } ;
struct bpf_map {int dummy; } ;


 int BPF_LOADER_ERRNO__OBJCONF_CONF ;
 int BPF_LOADER_ERRNO__OBJCONF_MAP_VALUE ;
 scalar_t__ PARSE_EVENTS__TERM_TYPE_STR ;
 int __bpf_map__config_event (struct bpf_map*,struct parse_events_term*,struct evlist*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int
bpf_map__config_event(struct bpf_map *map,
        struct parse_events_term *term,
        struct evlist *evlist)
{
 if (!term->err_val) {
  pr_debug("Config value not set\n");
  return -BPF_LOADER_ERRNO__OBJCONF_CONF;
 }

 if (term->type_val != PARSE_EVENTS__TERM_TYPE_STR) {
  pr_debug("ERROR: wrong value type for 'event'\n");
  return -BPF_LOADER_ERRNO__OBJCONF_MAP_VALUE;
 }

 return __bpf_map__config_event(map, term, evlist);
}
