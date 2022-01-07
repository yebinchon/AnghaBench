
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rds_loop_net_ops ;
 int unregister_pernet_device (int *) ;

void rds_loop_net_exit(void)
{
 unregister_pernet_device(&rds_loop_net_ops);
}
