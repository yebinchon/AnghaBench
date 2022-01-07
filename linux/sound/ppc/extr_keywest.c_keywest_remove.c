
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct i2c_client* client; } ;


 TYPE_1__* keywest_ctx ;

__attribute__((used)) static int keywest_remove(struct i2c_client *client)
{
 if (! keywest_ctx)
  return 0;
 if (client == keywest_ctx->client)
  keywest_ctx->client = ((void*)0);

 return 0;
}
