
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int dev_set_drvdata (int *,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int soc_component_dev_wm1250_ev1 ;
 int wm1250_ev1_dai ;
 int wm1250_ev1_free (struct i2c_client*) ;
 int wm1250_ev1_pdata (struct i2c_client*) ;

__attribute__((used)) static int wm1250_ev1_probe(struct i2c_client *i2c,
       const struct i2c_device_id *i2c_id)
{
 int id, board, rev, ret;

 dev_set_drvdata(&i2c->dev, ((void*)0));

 board = i2c_smbus_read_byte_data(i2c, 0);
 if (board < 0) {
  dev_err(&i2c->dev, "Failed to read ID: %d\n", board);
  return board;
 }

 id = (board & 0xfe) >> 2;
 rev = board & 0x3;

 if (id != 1) {
  dev_err(&i2c->dev, "Unknown board ID %d\n", id);
  return -ENODEV;
 }

 dev_info(&i2c->dev, "revision %d\n", rev + 1);

 ret = wm1250_ev1_pdata(i2c);
 if (ret != 0)
  return ret;

 ret = devm_snd_soc_register_component(&i2c->dev, &soc_component_dev_wm1250_ev1,
         &wm1250_ev1_dai, 1);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to register CODEC: %d\n", ret);
  wm1250_ev1_free(i2c);
  return ret;
 }

 return 0;
}
