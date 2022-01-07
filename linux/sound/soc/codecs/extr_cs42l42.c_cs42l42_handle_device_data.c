
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cs42l42_private {unsigned int ts_inv; unsigned int ts_dbnc_rise; unsigned int ts_dbnc_fall; unsigned int btn_det_init_dbnce; unsigned int btn_det_event_dbnce; unsigned int* bias_thresholds; unsigned int hs_bias_ramp_rate; int regmap; void* hs_bias_ramp_time; } ;


 void* CS42L42_BTN_DET_EVENT_DBNCE_DEFAULT ;
 unsigned int CS42L42_BTN_DET_EVENT_DBNCE_MAX ;
 unsigned int CS42L42_BTN_DET_EVENT_DBNCE_MIN ;
 void* CS42L42_BTN_DET_INIT_DBNCE_DEFAULT ;
 unsigned int CS42L42_BTN_DET_INIT_DBNCE_MAX ;
 unsigned int CS42L42_BTN_DET_INIT_DBNCE_MIN ;


 int CS42L42_HSBIAS_RAMP_MASK ;
 int CS42L42_HSBIAS_RAMP_SHIFT ;


 void* CS42L42_HSBIAS_RAMP_TIME0 ;
 void* CS42L42_HSBIAS_RAMP_TIME1 ;
 void* CS42L42_HSBIAS_RAMP_TIME2 ;
 void* CS42L42_HSBIAS_RAMP_TIME3 ;
 int CS42L42_HS_BIAS_CTL ;
 unsigned int CS42L42_HS_DET_LEVEL_MAX ;
 unsigned int CS42L42_HS_DET_LEVEL_MIN ;
 int CS42L42_NUM_BIASES ;
 int CS42L42_TSENSE_CTL ;
 int CS42L42_TS_FALL_DBNCE_TIME_MASK ;
 int CS42L42_TS_FALL_DBNCE_TIME_SHIFT ;


 int CS42L42_TS_INV_MASK ;
 int CS42L42_TS_INV_SHIFT ;
 int CS42L42_TS_RISE_DBNCE_TIME_MASK ;
 int CS42L42_TS_RISE_DBNCE_TIME_SHIFT ;
 int dev_err (TYPE_1__*,char*,unsigned int,...) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int of_property_read_u32_array (struct device_node*,char*,int *,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 void** threshold_defaults ;

__attribute__((used)) static int cs42l42_handle_device_data(struct i2c_client *i2c_client,
     struct cs42l42_private *cs42l42)
{
 struct device_node *np = i2c_client->dev.of_node;
 unsigned int val;
 unsigned int thresholds[CS42L42_NUM_BIASES];
 int ret;
 int i;

 ret = of_property_read_u32(np, "cirrus,ts-inv", &val);

 if (!ret) {
  switch (val) {
  case 128:
  case 129:
   cs42l42->ts_inv = val;
   break;
  default:
   dev_err(&i2c_client->dev,
    "Wrong cirrus,ts-inv DT value %d\n",
    val);
   cs42l42->ts_inv = 129;
  }
 } else {
  cs42l42->ts_inv = 129;
 }

 regmap_update_bits(cs42l42->regmap, CS42L42_TSENSE_CTL,
   CS42L42_TS_INV_MASK,
   (cs42l42->ts_inv << CS42L42_TS_INV_SHIFT));

 ret = of_property_read_u32(np, "cirrus,ts-dbnc-rise", &val);

 if (!ret) {
  switch (val) {
  case 137:
  case 135:
  case 132:
  case 131:
  case 130:
  case 136:
  case 134:
  case 133:
   cs42l42->ts_dbnc_rise = val;
   break;
  default:
   dev_err(&i2c_client->dev,
    "Wrong cirrus,ts-dbnc-rise DT value %d\n",
    val);
   cs42l42->ts_dbnc_rise = 136;
  }
 } else {
  cs42l42->ts_dbnc_rise = 136;
 }

 regmap_update_bits(cs42l42->regmap, CS42L42_TSENSE_CTL,
   CS42L42_TS_RISE_DBNCE_TIME_MASK,
   (cs42l42->ts_dbnc_rise <<
   CS42L42_TS_RISE_DBNCE_TIME_SHIFT));

 ret = of_property_read_u32(np, "cirrus,ts-dbnc-fall", &val);

 if (!ret) {
  switch (val) {
  case 137:
  case 135:
  case 132:
  case 131:
  case 130:
  case 136:
  case 134:
  case 133:
   cs42l42->ts_dbnc_fall = val;
   break;
  default:
   dev_err(&i2c_client->dev,
    "Wrong cirrus,ts-dbnc-fall DT value %d\n",
    val);
   cs42l42->ts_dbnc_fall = 137;
  }
 } else {
  cs42l42->ts_dbnc_fall = 137;
 }

 regmap_update_bits(cs42l42->regmap, CS42L42_TSENSE_CTL,
   CS42L42_TS_FALL_DBNCE_TIME_MASK,
   (cs42l42->ts_dbnc_fall <<
   CS42L42_TS_FALL_DBNCE_TIME_SHIFT));

 ret = of_property_read_u32(np, "cirrus,btn-det-init-dbnce", &val);

 if (!ret) {
  if ((val >= CS42L42_BTN_DET_INIT_DBNCE_MIN) &&
   (val <= CS42L42_BTN_DET_INIT_DBNCE_MAX))
   cs42l42->btn_det_init_dbnce = val;
  else {
   dev_err(&i2c_client->dev,
    "Wrong cirrus,btn-det-init-dbnce DT value %d\n",
    val);
   cs42l42->btn_det_init_dbnce =
    CS42L42_BTN_DET_INIT_DBNCE_DEFAULT;
  }
 } else {
  cs42l42->btn_det_init_dbnce =
   CS42L42_BTN_DET_INIT_DBNCE_DEFAULT;
 }

 ret = of_property_read_u32(np, "cirrus,btn-det-event-dbnce", &val);

 if (!ret) {
  if ((val >= CS42L42_BTN_DET_EVENT_DBNCE_MIN) &&
   (val <= CS42L42_BTN_DET_EVENT_DBNCE_MAX))
   cs42l42->btn_det_event_dbnce = val;
  else {
   dev_err(&i2c_client->dev,
   "Wrong cirrus,btn-det-event-dbnce DT value %d\n", val);
   cs42l42->btn_det_event_dbnce =
    CS42L42_BTN_DET_EVENT_DBNCE_DEFAULT;
  }
 } else {
  cs42l42->btn_det_event_dbnce =
   CS42L42_BTN_DET_EVENT_DBNCE_DEFAULT;
 }

 ret = of_property_read_u32_array(np, "cirrus,bias-lvls",
       (u32 *)thresholds, CS42L42_NUM_BIASES);

 if (!ret) {
  for (i = 0; i < CS42L42_NUM_BIASES; i++) {
   if ((thresholds[i] >= CS42L42_HS_DET_LEVEL_MIN) &&
    (thresholds[i] <= CS42L42_HS_DET_LEVEL_MAX))
    cs42l42->bias_thresholds[i] = thresholds[i];
   else {
    dev_err(&i2c_client->dev,
    "Wrong cirrus,bias-lvls[%d] DT value %d\n", i,
     thresholds[i]);
    cs42l42->bias_thresholds[i] =
     threshold_defaults[i];
   }
  }
 } else {
  for (i = 0; i < CS42L42_NUM_BIASES; i++)
   cs42l42->bias_thresholds[i] = threshold_defaults[i];
 }

 ret = of_property_read_u32(np, "cirrus,hs-bias-ramp-rate", &val);

 if (!ret) {
  switch (val) {
  case 140:
   cs42l42->hs_bias_ramp_rate = val;
   cs42l42->hs_bias_ramp_time = CS42L42_HSBIAS_RAMP_TIME0;
   break;
  case 141:
   cs42l42->hs_bias_ramp_rate = val;
   cs42l42->hs_bias_ramp_time = CS42L42_HSBIAS_RAMP_TIME1;
   break;
  case 139:
   cs42l42->hs_bias_ramp_rate = val;
   cs42l42->hs_bias_ramp_time = CS42L42_HSBIAS_RAMP_TIME2;
   break;
  case 138:
   cs42l42->hs_bias_ramp_rate = val;
   cs42l42->hs_bias_ramp_time = CS42L42_HSBIAS_RAMP_TIME3;
   break;
  default:
   dev_err(&i2c_client->dev,
    "Wrong cirrus,hs-bias-ramp-rate DT value %d\n",
    val);
   cs42l42->hs_bias_ramp_rate = 139;
   cs42l42->hs_bias_ramp_time = CS42L42_HSBIAS_RAMP_TIME2;
  }
 } else {
  cs42l42->hs_bias_ramp_rate = 139;
  cs42l42->hs_bias_ramp_time = CS42L42_HSBIAS_RAMP_TIME2;
 }

 regmap_update_bits(cs42l42->regmap, CS42L42_HS_BIAS_CTL,
   CS42L42_HSBIAS_RAMP_MASK,
   (cs42l42->hs_bias_ramp_rate <<
   CS42L42_HSBIAS_RAMP_SHIFT));

 return 0;
}
