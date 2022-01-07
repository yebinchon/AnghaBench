
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct onyx {struct onyx* codec_info; TYPE_1__ codec; } ;
struct i2c_client {int dummy; } ;


 int aoa_codec_unregister (TYPE_1__*) ;
 struct onyx* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct onyx*) ;
 int of_node_put (int ) ;

__attribute__((used)) static int onyx_i2c_remove(struct i2c_client *client)
{
 struct onyx *onyx = i2c_get_clientdata(client);

 aoa_codec_unregister(&onyx->codec);
 of_node_put(onyx->codec.node);
 kfree(onyx->codec_info);
 kfree(onyx);
 return 0;
}
