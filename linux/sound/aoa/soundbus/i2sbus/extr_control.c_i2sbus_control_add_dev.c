
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct TYPE_6__ {TYPE_2__ ofdev; } ;
struct i2sbus_dev {int bus_number; int item; void* clock_disable; void* cell_disable; void* clock_enable; void* cell_enable; void* enable; TYPE_3__ sound; } ;
struct i2sbus_control {int list; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int list_add (int *,int *) ;
 void* pmf_find_function (struct device_node*,char*) ;
 int pmf_put_function (void*) ;

int i2sbus_control_add_dev(struct i2sbus_control *c,
      struct i2sbus_dev *i2sdev)
{
 struct device_node *np;

 np = i2sdev->sound.ofdev.dev.of_node;
 i2sdev->enable = pmf_find_function(np, "enable");
 i2sdev->cell_enable = pmf_find_function(np, "cell-enable");
 i2sdev->clock_enable = pmf_find_function(np, "clock-enable");
 i2sdev->cell_disable = pmf_find_function(np, "cell-disable");
 i2sdev->clock_disable = pmf_find_function(np, "clock-disable");






 if (i2sdev->bus_number != 0 && i2sdev->bus_number != 1 &&
     (!i2sdev->enable ||
      !i2sdev->cell_enable || !i2sdev->clock_enable ||
      !i2sdev->cell_disable || !i2sdev->clock_disable)) {
  pmf_put_function(i2sdev->enable);
  pmf_put_function(i2sdev->cell_enable);
  pmf_put_function(i2sdev->clock_enable);
  pmf_put_function(i2sdev->cell_disable);
  pmf_put_function(i2sdev->clock_disable);
  return -ENODEV;
 }

 list_add(&i2sdev->item, &c->list);

 return 0;
}
