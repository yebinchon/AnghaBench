
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_iostats {int dummy; } ;


 int kfree (struct rpc_iostats*) ;

void rpc_free_iostats(struct rpc_iostats *stats)
{
 kfree(stats);
}
