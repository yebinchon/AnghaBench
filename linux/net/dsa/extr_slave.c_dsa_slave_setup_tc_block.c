
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int block; int * driver_block_list; } ;
struct flow_block_cb {int driver_list; } ;
typedef int flow_setup_cb_t ;


 int EBUSY ;
 int ENOENT ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ;
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int dsa_slave_block_cb_list ;
 int * dsa_slave_setup_tc_block_cb_eg ;
 int * dsa_slave_setup_tc_block_cb_ig ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int *,struct net_device*,struct net_device*,int *) ;
 int flow_block_cb_is_busy (int *,struct net_device*,int *) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int *,struct net_device*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static int dsa_slave_setup_tc_block(struct net_device *dev,
        struct flow_block_offload *f)
{
 struct flow_block_cb *block_cb;
 flow_setup_cb_t *cb;

 if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
  cb = dsa_slave_setup_tc_block_cb_ig;
 else if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS)
  cb = dsa_slave_setup_tc_block_cb_eg;
 else
  return -EOPNOTSUPP;

 f->driver_block_list = &dsa_slave_block_cb_list;

 switch (f->command) {
 case 129:
  if (flow_block_cb_is_busy(cb, dev, &dsa_slave_block_cb_list))
   return -EBUSY;

  block_cb = flow_block_cb_alloc(cb, dev, dev, ((void*)0));
  if (IS_ERR(block_cb))
   return PTR_ERR(block_cb);

  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, &dsa_slave_block_cb_list);
  return 0;
 case 128:
  block_cb = flow_block_cb_lookup(f->block, cb, dev);
  if (!block_cb)
   return -ENOENT;

  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
