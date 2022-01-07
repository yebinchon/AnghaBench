
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_indr_block_cb {int list; } ;


 int kfree (struct flow_indr_block_cb*) ;
 int list_del (int *) ;

__attribute__((used)) static void flow_indr_block_cb_del(struct flow_indr_block_cb *indr_block_cb)
{
 list_del(&indr_block_cb->list);
 kfree(indr_block_cb);
}
