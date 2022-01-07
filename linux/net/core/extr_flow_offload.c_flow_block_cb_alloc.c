
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_block_cb {void (* release ) (void*) ;void* cb_priv; void* cb_ident; int * cb; } ;
typedef int flow_setup_cb_t ;


 int ENOMEM ;
 struct flow_block_cb* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct flow_block_cb* kzalloc (int,int ) ;

struct flow_block_cb *flow_block_cb_alloc(flow_setup_cb_t *cb,
       void *cb_ident, void *cb_priv,
       void (*release)(void *cb_priv))
{
 struct flow_block_cb *block_cb;

 block_cb = kzalloc(sizeof(*block_cb), GFP_KERNEL);
 if (!block_cb)
  return ERR_PTR(-ENOMEM);

 block_cb->cb = cb;
 block_cb->cb_ident = cb_ident;
 block_cb->cb_priv = cb_priv;
 block_cb->release = release;

 return block_cb;
}
