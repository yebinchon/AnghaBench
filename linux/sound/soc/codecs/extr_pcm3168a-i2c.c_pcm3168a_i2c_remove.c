
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int pcm3168a_remove (int *) ;

__attribute__((used)) static int pcm3168a_i2c_remove(struct i2c_client *i2c)
{
 pcm3168a_remove(&i2c->dev);

 return 0;
}
