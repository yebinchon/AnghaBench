
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int pcm1789_common_exit (int *) ;

__attribute__((used)) static int pcm1789_i2c_remove(struct i2c_client *client)
{
 return pcm1789_common_exit(&client->dev);
}
