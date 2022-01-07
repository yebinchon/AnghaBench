
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_fifos ;
 int flow_keys ;
 int free_percpu (int ) ;

void action_fifos_exit(void)
{
 free_percpu(action_fifos);
 free_percpu(flow_keys);
}
