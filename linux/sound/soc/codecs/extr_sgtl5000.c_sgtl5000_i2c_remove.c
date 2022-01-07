
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgtl5000_priv {int supplies; int num_supplies; int mclk; } ;
struct i2c_client {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sgtl5000_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_free (int ,int ) ;

__attribute__((used)) static int sgtl5000_i2c_remove(struct i2c_client *client)
{
 struct sgtl5000_priv *sgtl5000 = i2c_get_clientdata(client);

 clk_disable_unprepare(sgtl5000->mclk);
 regulator_bulk_disable(sgtl5000->num_supplies, sgtl5000->supplies);
 regulator_bulk_free(sgtl5000->num_supplies, sgtl5000->supplies);

 return 0;
}
