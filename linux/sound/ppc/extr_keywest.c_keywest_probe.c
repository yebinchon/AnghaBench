
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {struct i2c_client* client; } ;


 int i2c_set_clientdata (struct i2c_client*,TYPE_1__*) ;
 TYPE_1__* keywest_ctx ;
 int keywest_probed ;

__attribute__((used)) static int keywest_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 keywest_probed = 1;

 if (!keywest_ctx->client)
  keywest_ctx->client = client;
 i2c_set_clientdata(client, keywest_ctx);
 return 0;
}
