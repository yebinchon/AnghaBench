
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_probes; } ;


 int MAX_PROBES ;
 int init_probe_symbol_maps (int) ;
 int pr_debug (char*) ;
 TYPE_1__ probe_conf ;

__attribute__((used)) static int bpf__prepare_probe(void)
{
 static int err = 0;
 static bool initialized = 0;






 if (initialized)
  return err;

 initialized = 1;
 err = init_probe_symbol_maps(0);
 if (err < 0)
  pr_debug("Failed to init_probe_symbol_maps\n");
 probe_conf.max_probes = MAX_PROBES;
 return err;
}
