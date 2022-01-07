
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int) ;
 int rds_tcp_unloading ;

__attribute__((used)) static void rds_tcp_set_unloading(void)
{
 atomic_set(&rds_tcp_unloading, 1);
}
