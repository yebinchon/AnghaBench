
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int max98090_i2c_shutdown (struct i2c_client*) ;

__attribute__((used)) static int max98090_i2c_remove(struct i2c_client *client)
{
 max98090_i2c_shutdown(client);

 return 0;
}
