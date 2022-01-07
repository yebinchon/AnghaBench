
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {size_t num_ports; TYPE_1__* ports; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int index; struct dsa_switch* ds; } ;


 int GFP_KERNEL ;
 struct dsa_switch* devm_kzalloc (struct device*,int ,int ) ;
 int ports ;
 int struct_size (struct dsa_switch*,int ,size_t) ;

struct dsa_switch *dsa_switch_alloc(struct device *dev, size_t n)
{
 struct dsa_switch *ds;
 int i;

 ds = devm_kzalloc(dev, struct_size(ds, ports, n), GFP_KERNEL);
 if (!ds)
  return ((void*)0);

 ds->dev = dev;
 ds->num_ports = n;

 for (i = 0; i < ds->num_ports; ++i) {
  ds->ports[i].index = i;
  ds->ports[i].ds = ds;
 }

 return ds;
}
