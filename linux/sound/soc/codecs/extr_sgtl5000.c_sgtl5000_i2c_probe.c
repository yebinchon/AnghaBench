
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sgtl5000_priv {int revision; scalar_t__ num_supplies; int micbias_resistor; int micbias_voltage; int lrclk_strength; int sclk_strength; int supplies; int mclk; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int I2S_LRCLK_STRENGTH_HIGH ;
 void* I2S_LRCLK_STRENGTH_LOW ;
 int I2S_SCLK_STRENGTH_HIGH ;
 void* I2S_SCLK_STRENGTH_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int LINREG_VDDD ;
 int PTR_ERR (int ) ;
 int SGTL5000_ANA_POWER_DEFAULT ;
 int SGTL5000_CHIP_ANA_POWER ;
 int SGTL5000_CHIP_CLK_CTRL ;
 int SGTL5000_CHIP_CLK_CTRL_DEFAULT ;
 int SGTL5000_CHIP_ID ;
 int SGTL5000_CHIP_LINREG_CTRL ;
 int SGTL5000_LINEREG_D_POWERUP ;
 int SGTL5000_LINREG_SIMPLE_POWERUP ;
 int SGTL5000_LINREG_VDDD_MASK ;




 int SGTL5000_PARTID_MASK ;
 int SGTL5000_PARTID_PART_ID ;
 int SGTL5000_PARTID_SHIFT ;
 int SGTL5000_REVID_MASK ;
 int SGTL5000_REVID_SHIFT ;
 int SGTL5000_STARTUP_POWERUP ;
 scalar_t__ VDDD ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,...) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 struct sgtl5000_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct sgtl5000_priv*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_disable (scalar_t__,int ) ;
 int regulator_bulk_free (scalar_t__,int ) ;
 int sgtl5000_dai ;
 int sgtl5000_driver ;
 int sgtl5000_enable_regulators (struct i2c_client*) ;
 int sgtl5000_fill_defaults (struct i2c_client*) ;
 int sgtl5000_regmap ;
 int udelay (int) ;

__attribute__((used)) static int sgtl5000_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct sgtl5000_priv *sgtl5000;
 int ret, reg, rev;
 struct device_node *np = client->dev.of_node;
 u32 value;
 u16 ana_pwr;

 sgtl5000 = devm_kzalloc(&client->dev, sizeof(*sgtl5000), GFP_KERNEL);
 if (!sgtl5000)
  return -ENOMEM;

 i2c_set_clientdata(client, sgtl5000);

 ret = sgtl5000_enable_regulators(client);
 if (ret)
  return ret;

 sgtl5000->regmap = devm_regmap_init_i2c(client, &sgtl5000_regmap);
 if (IS_ERR(sgtl5000->regmap)) {
  ret = PTR_ERR(sgtl5000->regmap);
  dev_err(&client->dev, "Failed to allocate regmap: %d\n", ret);
  goto disable_regs;
 }

 sgtl5000->mclk = devm_clk_get(&client->dev, ((void*)0));
 if (IS_ERR(sgtl5000->mclk)) {
  ret = PTR_ERR(sgtl5000->mclk);

  if (ret == -ENOENT)
   ret = -EPROBE_DEFER;

  if (ret != -EPROBE_DEFER)
   dev_err(&client->dev, "Failed to get mclock: %d\n",
    ret);
  goto disable_regs;
 }

 ret = clk_prepare_enable(sgtl5000->mclk);
 if (ret) {
  dev_err(&client->dev, "Error enabling clock %d\n", ret);
  goto disable_regs;
 }


 udelay(1);


 ret = regmap_read(sgtl5000->regmap, SGTL5000_CHIP_ID, &reg);
 if (ret) {
  dev_err(&client->dev, "Error reading chip id %d\n", ret);
  goto disable_clk;
 }

 if (((reg & SGTL5000_PARTID_MASK) >> SGTL5000_PARTID_SHIFT) !=
     SGTL5000_PARTID_PART_ID) {
  dev_err(&client->dev,
   "Device with ID register %x is not a sgtl5000\n", reg);
  ret = -ENODEV;
  goto disable_clk;
 }

 rev = (reg & SGTL5000_REVID_MASK) >> SGTL5000_REVID_SHIFT;
 dev_info(&client->dev, "sgtl5000 revision 0x%x\n", rev);
 sgtl5000->revision = rev;


 ret = regmap_write(sgtl5000->regmap,
      SGTL5000_CHIP_CLK_CTRL,
      SGTL5000_CHIP_CLK_CTRL_DEFAULT);
 if (ret)
  dev_err(&client->dev,
   "Error %d initializing CHIP_CLK_CTRL\n", ret);


 ana_pwr = SGTL5000_ANA_POWER_DEFAULT;
 if (sgtl5000->num_supplies <= VDDD) {

  ret = regmap_update_bits(sgtl5000->regmap,
      SGTL5000_CHIP_LINREG_CTRL,
      SGTL5000_LINREG_VDDD_MASK,
      LINREG_VDDD);
  if (ret)
   dev_err(&client->dev,
    "Error %d setting LINREG_VDDD\n", ret);

  ana_pwr |= SGTL5000_LINEREG_D_POWERUP;
  dev_info(&client->dev,
    "Using internal LDO instead of VDDD: check ER1 erratum\n");
 } else {




  ana_pwr &= ~(SGTL5000_STARTUP_POWERUP
        | SGTL5000_LINREG_SIMPLE_POWERUP);
  dev_dbg(&client->dev, "Using external VDDD\n");
 }
 ret = regmap_write(sgtl5000->regmap, SGTL5000_CHIP_ANA_POWER, ana_pwr);
 if (ret)
  dev_err(&client->dev,
   "Error %d setting CHIP_ANA_POWER to %04x\n",
   ret, ana_pwr);

 if (np) {
  if (!of_property_read_u32(np,
   "micbias-resistor-k-ohms", &value)) {
   switch (value) {
   case 128:
    sgtl5000->micbias_resistor = 0;
    break;
   case 131:
    sgtl5000->micbias_resistor = 1;
    break;
   case 130:
    sgtl5000->micbias_resistor = 2;
    break;
   case 129:
    sgtl5000->micbias_resistor = 3;
    break;
   default:
    sgtl5000->micbias_resistor = 2;
    dev_err(&client->dev,
     "Unsuitable MicBias resistor\n");
   }
  } else {

   sgtl5000->micbias_resistor = 2;
  }
  if (!of_property_read_u32(np,
   "micbias-voltage-m-volts", &value)) {


   if ((value >= 1250) && (value <= 3000))
    sgtl5000->micbias_voltage = (value / 250) - 5;
   else {
    sgtl5000->micbias_voltage = 0;
    dev_err(&client->dev,
     "Unsuitable MicBias voltage\n");
   }
  } else {
   sgtl5000->micbias_voltage = 0;
  }
 }

 sgtl5000->lrclk_strength = I2S_LRCLK_STRENGTH_LOW;
 if (!of_property_read_u32(np, "lrclk-strength", &value)) {
  if (value > I2S_LRCLK_STRENGTH_HIGH)
   value = I2S_LRCLK_STRENGTH_LOW;
  sgtl5000->lrclk_strength = value;
 }

 sgtl5000->sclk_strength = I2S_SCLK_STRENGTH_LOW;
 if (!of_property_read_u32(np, "sclk-strength", &value)) {
  if (value > I2S_SCLK_STRENGTH_HIGH)
   value = I2S_SCLK_STRENGTH_LOW;
  sgtl5000->sclk_strength = value;
 }


 sgtl5000_fill_defaults(client);

 ret = devm_snd_soc_register_component(&client->dev,
   &sgtl5000_driver, &sgtl5000_dai, 1);
 if (ret)
  goto disable_clk;

 return 0;

disable_clk:
 clk_disable_unprepare(sgtl5000->mclk);

disable_regs:
 regulator_bulk_disable(sgtl5000->num_supplies, sgtl5000->supplies);
 regulator_bulk_free(sgtl5000->num_supplies, sgtl5000->supplies);

 return ret;
}
