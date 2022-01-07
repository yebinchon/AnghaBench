
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_indr_block_dev {int cb_list; } ;
struct flow_indr_block_cb {int list; void* cb_ident; int * cb; void* cb_priv; } ;
typedef int flow_indr_block_bind_cb_t ;


 int EEXIST ;
 int ENOMEM ;
 struct flow_indr_block_cb* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct flow_indr_block_cb* flow_indr_block_cb_lookup (struct flow_indr_block_dev*,int *,void*) ;
 struct flow_indr_block_cb* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct flow_indr_block_cb *
flow_indr_block_cb_add(struct flow_indr_block_dev *indr_dev, void *cb_priv,
         flow_indr_block_bind_cb_t *cb, void *cb_ident)
{
 struct flow_indr_block_cb *indr_block_cb;

 indr_block_cb = flow_indr_block_cb_lookup(indr_dev, cb, cb_ident);
 if (indr_block_cb)
  return ERR_PTR(-EEXIST);

 indr_block_cb = kzalloc(sizeof(*indr_block_cb), GFP_KERNEL);
 if (!indr_block_cb)
  return ERR_PTR(-ENOMEM);

 indr_block_cb->cb_priv = cb_priv;
 indr_block_cb->cb = cb;
 indr_block_cb->cb_ident = cb_ident;
 list_add(&indr_block_cb->list, &indr_dev->cb_list);

 return indr_block_cb;
}
