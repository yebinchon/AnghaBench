
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cs42l56_private {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 struct cs42l56_private* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int cs42l56_i2c_remove(struct i2c_client *client)
{
 struct cs42l56_private *cs42l56 = i2c_get_clientdata(client);

 regulator_bulk_disable(ARRAY_SIZE(cs42l56->supplies),
          cs42l56->supplies);
 return 0;
}
