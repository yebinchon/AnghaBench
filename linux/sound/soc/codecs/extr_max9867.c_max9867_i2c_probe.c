
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max9867_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX9867_REVISION ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 struct max9867_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max9867_priv*) ;
 int max9867_component ;
 int max9867_dai ;
 int max9867_regmap ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int max9867_i2c_probe(struct i2c_client *i2c,
  const struct i2c_device_id *id)
{
 struct max9867_priv *max9867;
 int ret, reg;

 max9867 = devm_kzalloc(&i2c->dev, sizeof(*max9867), GFP_KERNEL);
 if (!max9867)
  return -ENOMEM;

 i2c_set_clientdata(i2c, max9867);
 max9867->regmap = devm_regmap_init_i2c(i2c, &max9867_regmap);
 if (IS_ERR(max9867->regmap)) {
  ret = PTR_ERR(max9867->regmap);
  dev_err(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }
 ret = regmap_read(max9867->regmap, MAX9867_REVISION, &reg);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to read: %d\n", ret);
  return ret;
 }
 dev_info(&i2c->dev, "device revision: %x\n", reg);
 ret = devm_snd_soc_register_component(&i2c->dev, &max9867_component,
   max9867_dai, ARRAY_SIZE(max9867_dai));
 if (ret < 0)
  dev_err(&i2c->dev, "Failed to register component: %d\n", ret);
 return ret;
}
