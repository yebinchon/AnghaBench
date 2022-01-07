
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_indr_block_dev {int dummy; } ;
struct flow_indr_block_cb {int cb_priv; int cb; } ;
typedef int flow_indr_block_bind_cb_t ;


 int ENOMEM ;
 int FLOW_BLOCK_BIND ;
 int PTR_ERR_OR_ZERO (struct flow_indr_block_cb*) ;
 int flow_block_ing_cmd (struct net_device*,int ,int ,int ) ;
 struct flow_indr_block_cb* flow_indr_block_cb_add (struct flow_indr_block_dev*,void*,int *,void*) ;
 struct flow_indr_block_dev* flow_indr_block_dev_get (struct net_device*) ;
 int flow_indr_block_dev_put (struct flow_indr_block_dev*) ;

int __flow_indr_block_cb_register(struct net_device *dev, void *cb_priv,
      flow_indr_block_bind_cb_t *cb,
      void *cb_ident)
{
 struct flow_indr_block_cb *indr_block_cb;
 struct flow_indr_block_dev *indr_dev;
 int err;

 indr_dev = flow_indr_block_dev_get(dev);
 if (!indr_dev)
  return -ENOMEM;

 indr_block_cb = flow_indr_block_cb_add(indr_dev, cb_priv, cb, cb_ident);
 err = PTR_ERR_OR_ZERO(indr_block_cb);
 if (err)
  goto err_dev_put;

 flow_block_ing_cmd(dev, indr_block_cb->cb, indr_block_cb->cb_priv,
      FLOW_BLOCK_BIND);

 return 0;

err_dev_put:
 flow_indr_block_dev_put(indr_dev);
 return err;
}
