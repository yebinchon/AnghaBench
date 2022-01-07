
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_block_cb {int cb_priv; int (* release ) (int ) ;} ;


 int kfree (struct flow_block_cb*) ;
 int stub1 (int ) ;

void flow_block_cb_free(struct flow_block_cb *block_cb)
{
 if (block_cb->release)
  block_cb->release(block_cb->cb_priv);

 kfree(block_cb);
}
