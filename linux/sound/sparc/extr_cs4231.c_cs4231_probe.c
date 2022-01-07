
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int parent; } ;


 int ENODEV ;
 int cs4231_ebus_probe (struct platform_device*) ;
 int cs4231_sbus_probe (struct platform_device*) ;
 scalar_t__ of_node_name_eq (int ,char*) ;

__attribute__((used)) static int cs4231_probe(struct platform_device *op)
{
 return -ENODEV;
}
