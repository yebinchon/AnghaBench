
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int async_func_t ;
typedef int async_cookie_t ;


 int async_dfl_domain ;
 int async_schedule_node_domain (int ,void*,int,int *) ;

async_cookie_t async_schedule_node(async_func_t func, void *data, int node)
{
 return async_schedule_node_domain(func, data, node, &async_dfl_domain);
}
