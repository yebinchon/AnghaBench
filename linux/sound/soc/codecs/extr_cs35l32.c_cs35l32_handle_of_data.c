
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cs35l32_platform_data {unsigned int sdout_share; unsigned int boost_mng; unsigned int sdout_datacfg; unsigned int batt_thresh; unsigned int batt_recov; } ;
 int dev_err (TYPE_1__*,char*,unsigned int) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,unsigned int*) ;

__attribute__((used)) static int cs35l32_handle_of_data(struct i2c_client *i2c_client,
        struct cs35l32_platform_data *pdata)
{
 struct device_node *np = i2c_client->dev.of_node;
 unsigned int val;

 if (of_property_read_u32(np, "cirrus,sdout-share", &val) >= 0)
  pdata->sdout_share = val;

 if (of_property_read_u32(np, "cirrus,boost-manager", &val))
  val = -1u;

 switch (val) {
 case 135:
 case 134:
 case 133:
 case 132:
  pdata->boost_mng = val;
  break;
 case -1u:
 default:
  dev_err(&i2c_client->dev,
   "Wrong cirrus,boost-manager DT value %d\n", val);
  pdata->boost_mng = 133;
 }

 if (of_property_read_u32(np, "cirrus,sdout-datacfg", &val))
  val = -1u;
 switch (val) {
 case 129:
 case 130:
 case 131:
 case 128:
  pdata->sdout_datacfg = val;
  break;
 case -1u:
 default:
  dev_err(&i2c_client->dev,
   "Wrong cirrus,sdout-datacfg DT value %d\n", val);
  pdata->sdout_datacfg = 131;
 }

 if (of_property_read_u32(np, "cirrus,battery-threshold", &val))
  val = -1u;
 switch (val) {
 case 139:
 case 138:
 case 137:
 case 136:
  pdata->batt_thresh = val;
  break;
 case -1u:
 default:
  dev_err(&i2c_client->dev,
   "Wrong cirrus,battery-threshold DT value %d\n", val);
  pdata->batt_thresh = 137;
 }

 if (of_property_read_u32(np, "cirrus,battery-recovery", &val))
  val = -1u;
 switch (val) {
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
  pdata->batt_recov = val;
  break;
 case -1u:
 default:
  dev_err(&i2c_client->dev,
   "Wrong cirrus,battery-recovery DT value %d\n", val);
  pdata->batt_recov = 142;
 }

 return 0;
}
