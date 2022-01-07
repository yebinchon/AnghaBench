
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_raw_event_map {TYPE_1__* tp; } ;
struct TYPE_2__ {int name; } ;


 struct bpf_raw_event_map* __start__bpf_raw_tp ;
 struct bpf_raw_event_map* __stop__bpf_raw_tp ;
 struct bpf_raw_event_map* bpf_get_raw_tracepoint_module (char const*) ;
 int strcmp (int ,char const*) ;

struct bpf_raw_event_map *bpf_get_raw_tracepoint(const char *name)
{
 struct bpf_raw_event_map *btp = __start__bpf_raw_tp;

 for (; btp < __stop__bpf_raw_tp; btp++) {
  if (!strcmp(btp->tp->name, name))
   return btp;
 }

 return bpf_get_raw_tracepoint_module(name);
}
