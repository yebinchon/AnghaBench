
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_destroy (int *) ;
 int rpc_clids ;

void rpc_cleanup_clids(void)
{
 ida_destroy(&rpc_clids);
}
