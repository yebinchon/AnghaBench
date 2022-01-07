
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmadsp_ops {int dummy; } ;
struct sigmadsp {int lock; int data_list; int ctrl_list; struct device* dev; struct sigmadsp_ops const* ops; } ;
struct device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int sigmadsp_firmware_load (struct sigmadsp*,char const*) ;

__attribute__((used)) static int sigmadsp_init(struct sigmadsp *sigmadsp, struct device *dev,
 const struct sigmadsp_ops *ops, const char *firmware_name)
{
 sigmadsp->ops = ops;
 sigmadsp->dev = dev;

 INIT_LIST_HEAD(&sigmadsp->ctrl_list);
 INIT_LIST_HEAD(&sigmadsp->data_list);
 mutex_init(&sigmadsp->lock);

 return sigmadsp_firmware_load(sigmadsp, firmware_name);
}
