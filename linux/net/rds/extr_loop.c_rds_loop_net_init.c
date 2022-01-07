
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rds_loop_net_ops ;
 int register_pernet_device (int *) ;

int rds_loop_net_init(void)
{
 return register_pernet_device(&rds_loop_net_ops);
}
