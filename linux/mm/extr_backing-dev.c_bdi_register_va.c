
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct rb_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct backing_dev_info {int bdi_list; int rb_node; scalar_t__ id; TYPE_1__ wb; struct device* dev; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int WB_registered ;
 int bdi_class ;
 int bdi_debug_register (struct backing_dev_info*,int ) ;
 scalar_t__ bdi_id_cursor ;
 int bdi_list ;
 int bdi_lock ;
 struct rb_node** bdi_lookup_rb_node (scalar_t__,struct rb_node**) ;
 int bdi_tree ;
 int cgwb_bdi_register (struct backing_dev_info*) ;
 int dev_name (struct device*) ;
 struct device* device_create_vargs (int ,int *,int ,struct backing_dev_info*,char const*,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int rb_insert_color (int *,int *) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_writeback_bdi_register (struct backing_dev_info*) ;

int bdi_register_va(struct backing_dev_info *bdi, const char *fmt, va_list args)
{
 struct device *dev;
 struct rb_node *parent, **p;

 if (bdi->dev)
  return 0;

 dev = device_create_vargs(bdi_class, ((void*)0), MKDEV(0, 0), bdi, fmt, args);
 if (IS_ERR(dev))
  return PTR_ERR(dev);

 cgwb_bdi_register(bdi);
 bdi->dev = dev;

 bdi_debug_register(bdi, dev_name(dev));
 set_bit(WB_registered, &bdi->wb.state);

 spin_lock_bh(&bdi_lock);

 bdi->id = ++bdi_id_cursor;

 p = bdi_lookup_rb_node(bdi->id, &parent);
 rb_link_node(&bdi->rb_node, parent, p);
 rb_insert_color(&bdi->rb_node, &bdi_tree);

 list_add_tail_rcu(&bdi->bdi_list, &bdi_list);

 spin_unlock_bh(&bdi_lock);

 trace_writeback_bdi_register(bdi);
 return 0;
}
