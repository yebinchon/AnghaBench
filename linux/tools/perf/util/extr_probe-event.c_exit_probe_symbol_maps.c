
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * host_machine ;
 int machine__delete (int *) ;
 int symbol__exit () ;

void exit_probe_symbol_maps(void)
{
 machine__delete(host_machine);
 host_machine = ((void*)0);
 symbol__exit();
}
