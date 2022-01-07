
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct bpf_raw_event_map {int dummy; } ;


 struct module* __module_address (unsigned long) ;
 int module_put (struct module*) ;

void bpf_put_raw_tracepoint(struct bpf_raw_event_map *btp)
{
 struct module *mod = __module_address((unsigned long)btp);

 if (mod)
  module_put(mod);
}
