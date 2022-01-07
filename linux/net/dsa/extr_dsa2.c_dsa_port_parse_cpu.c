
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_switch_tree {int dummy; } ;
struct dsa_switch {int dev; TYPE_1__* ops; struct dsa_switch_tree* dst; } ;
struct dsa_port {struct dsa_switch_tree* dst; struct net_device* master; struct dsa_device_ops const* tag_ops; int rcv; int filter; int type; int index; struct dsa_switch* ds; } ;
struct dsa_device_ops {int rcv; int filter; } ;
typedef enum dsa_tag_protocol { ____Placeholder_dsa_tag_protocol } dsa_tag_protocol ;
struct TYPE_2__ {int (* get_tag_protocol ) (struct dsa_switch*,int ) ;} ;


 int DSA_PORT_TYPE_CPU ;
 int ENOPROTOOPT ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct dsa_device_ops const*) ;
 int PTR_ERR (struct dsa_device_ops const*) ;
 int dev_warn (int ,char*) ;
 struct dsa_device_ops* dsa_tag_driver_get (int) ;
 int stub1 (struct dsa_switch*,int ) ;

__attribute__((used)) static int dsa_port_parse_cpu(struct dsa_port *dp, struct net_device *master)
{
 struct dsa_switch *ds = dp->ds;
 struct dsa_switch_tree *dst = ds->dst;
 const struct dsa_device_ops *tag_ops;
 enum dsa_tag_protocol tag_protocol;

 tag_protocol = ds->ops->get_tag_protocol(ds, dp->index);
 tag_ops = dsa_tag_driver_get(tag_protocol);
 if (IS_ERR(tag_ops)) {
  if (PTR_ERR(tag_ops) == -ENOPROTOOPT)
   return -EPROBE_DEFER;
  dev_warn(ds->dev, "No tagger for this switch\n");
  return PTR_ERR(tag_ops);
 }

 dp->type = DSA_PORT_TYPE_CPU;
 dp->filter = tag_ops->filter;
 dp->rcv = tag_ops->rcv;
 dp->tag_ops = tag_ops;
 dp->master = master;
 dp->dst = dst;

 return 0;
}
