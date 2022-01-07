
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int block; struct list_head* driver_block_list; } ;
struct flow_block_cb {int driver_list; } ;
typedef int flow_setup_cb_t ;


 int EBUSY ;
 int ENOENT ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int *,void*,void*,int *) ;
 int flow_block_cb_is_busy (int *,void*,struct list_head*) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int *,void*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del (int *) ;

int flow_block_cb_setup_simple(struct flow_block_offload *f,
          struct list_head *driver_block_list,
          flow_setup_cb_t *cb,
          void *cb_ident, void *cb_priv,
          bool ingress_only)
{
 struct flow_block_cb *block_cb;

 if (ingress_only &&
     f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
  return -EOPNOTSUPP;

 f->driver_block_list = driver_block_list;

 switch (f->command) {
 case 129:
  if (flow_block_cb_is_busy(cb, cb_ident, driver_block_list))
   return -EBUSY;

  block_cb = flow_block_cb_alloc(cb, cb_ident, cb_priv, ((void*)0));
  if (IS_ERR(block_cb))
   return PTR_ERR(block_cb);

  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, driver_block_list);
  return 0;
 case 128:
  block_cb = flow_block_cb_lookup(f->block, cb, cb_ident);
  if (!block_cb)
   return -ENOENT;

  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
