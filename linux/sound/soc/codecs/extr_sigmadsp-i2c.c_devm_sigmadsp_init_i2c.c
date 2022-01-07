
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmadsp_ops {int dummy; } ;
struct sigmadsp {int read; int write; struct i2c_client* control_data; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct sigmadsp*) ;
 struct sigmadsp* devm_sigmadsp_init (int *,struct sigmadsp_ops const*,char const*) ;
 int sigmadsp_read_i2c ;
 int sigmadsp_write_i2c ;

struct sigmadsp *devm_sigmadsp_init_i2c(struct i2c_client *client,
 const struct sigmadsp_ops *ops, const char *firmware_name)
{
 struct sigmadsp *sigmadsp;

 sigmadsp = devm_sigmadsp_init(&client->dev, ops, firmware_name);
 if (IS_ERR(sigmadsp))
  return sigmadsp;

 sigmadsp->control_data = client;
 sigmadsp->write = sigmadsp_write_i2c;
 sigmadsp->read = sigmadsp_read_i2c;

 return sigmadsp;
}
