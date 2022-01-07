
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int wm1250_ev1_free (struct i2c_client*) ;

__attribute__((used)) static int wm1250_ev1_remove(struct i2c_client *i2c)
{
 wm1250_ev1_free(i2c);

 return 0;
}
