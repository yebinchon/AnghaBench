
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5720_data {int devtype; int supplies; int fault_check_work; int regmap; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int INIT_DELAYED_WORK (int *,int ) ;

 unsigned int TAS5720_DEVICE_ID ;
 int TAS5720_DEVICE_ID_REG ;
 int TAS5720_DIGITAL_CTRL2_REG ;
 int TAS5720_MUTE ;
 int TAS5720_POWER_CTRL_REG ;
 int TAS5720_SDZ ;

 unsigned int TAS5722_DEVICE_ID ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*,unsigned int,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct tas5720_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int tas5720_fault_check_work ;

__attribute__((used)) static int tas5720_codec_probe(struct snd_soc_component *component)
{
 struct tas5720_data *tas5720 = snd_soc_component_get_drvdata(component);
 unsigned int device_id, expected_device_id;
 int ret;

 tas5720->component = component;

 ret = regulator_bulk_enable(ARRAY_SIZE(tas5720->supplies),
        tas5720->supplies);
 if (ret != 0) {
  dev_err(component->dev, "failed to enable supplies: %d\n", ret);
  return ret;
 }






 ret = regmap_read(tas5720->regmap, TAS5720_DEVICE_ID_REG, &device_id);
 if (ret < 0) {
  dev_err(component->dev, "failed to read device ID register: %d\n",
   ret);
  goto probe_fail;
 }

 switch (tas5720->devtype) {
 case 129:
  expected_device_id = TAS5720_DEVICE_ID;
  break;
 case 128:
  expected_device_id = TAS5722_DEVICE_ID;
  break;
 default:
  dev_err(component->dev, "unexpected private driver data\n");
  return -EINVAL;
 }

 if (device_id != expected_device_id)
  dev_warn(component->dev, "wrong device ID. expected: %u read: %u\n",
    expected_device_id, device_id);


 ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
      TAS5720_MUTE, TAS5720_MUTE);
 if (ret < 0)
  goto error_snd_soc_component_update_bits;







 ret = snd_soc_component_update_bits(component, TAS5720_POWER_CTRL_REG,
      TAS5720_SDZ, 0);
 if (ret < 0)
  goto error_snd_soc_component_update_bits;

 INIT_DELAYED_WORK(&tas5720->fault_check_work, tas5720_fault_check_work);

 return 0;

error_snd_soc_component_update_bits:
 dev_err(component->dev, "error configuring device registers: %d\n", ret);

probe_fail:
 regulator_bulk_disable(ARRAY_SIZE(tas5720->supplies),
          tas5720->supplies);
 return ret;
}
