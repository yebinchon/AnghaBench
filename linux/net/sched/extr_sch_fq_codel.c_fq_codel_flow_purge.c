
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_codel_flow {int * head; int tail; } ;


 int rtnl_kfree_skbs (int *,int ) ;

__attribute__((used)) static void fq_codel_flow_purge(struct fq_codel_flow *flow)
{
 rtnl_kfree_skbs(flow->head, flow->tail);
 flow->head = ((void*)0);
}
