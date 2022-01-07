
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2sbus_control {int dummy; } ;


 int kfree (struct i2sbus_control*) ;

void i2sbus_control_destroy(struct i2sbus_control *c)
{
 kfree(c);
}
