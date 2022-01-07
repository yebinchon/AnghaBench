
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dev; } ;
struct reg_sequence {int dummy; } ;
struct cs43130_private {int hpload_stat; int regmap; int hpload_evt; int * ac_freq; struct snd_soc_component* component; } ;


 unsigned int CS43130_HPLOAD_AC_INT ;
 int CS43130_HPLOAD_AC_START ;
 int CS43130_HPLOAD_NO_DC_INT ;
 int CS43130_HPLOAD_OOR_INT ;
 int CS43130_HPLOAD_UNPLUG_INT ;
 int CS43130_HP_LOAD_1 ;
 int CS43130_HP_MEAS_LOAD_1 ;
 int CS43130_HP_MEAS_LOAD_1_SHIFT ;
 int CS43130_HP_MEAS_LOAD_2 ;
 int CS43130_HP_MEAS_LOAD_2_SHIFT ;
 int CS43130_HP_MEAS_LOAD_MASK ;
 int CS43130_INT_MASK_4 ;
 int cs43130_get_ac_reg_val (int ) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int regmap_multi_reg_write (int ,struct reg_sequence*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int cs43130_hpload_proc(struct cs43130_private *cs43130,
          struct reg_sequence *seq, int seq_size,
          unsigned int rslt_msk, int ac_idx)
{
 int ret;
 unsigned int msk;
 u16 ac_reg_val;
 struct snd_soc_component *component = cs43130->component;

 reinit_completion(&cs43130->hpload_evt);

 if (rslt_msk == CS43130_HPLOAD_AC_INT) {
  ac_reg_val = cs43130_get_ac_reg_val(cs43130->ac_freq[ac_idx]);
  regmap_update_bits(cs43130->regmap, CS43130_HP_LOAD_1,
       CS43130_HPLOAD_AC_START, 0);
  regmap_update_bits(cs43130->regmap, CS43130_HP_MEAS_LOAD_1,
       CS43130_HP_MEAS_LOAD_MASK,
       ac_reg_val >> CS43130_HP_MEAS_LOAD_1_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_HP_MEAS_LOAD_2,
       CS43130_HP_MEAS_LOAD_MASK,
       ac_reg_val >> CS43130_HP_MEAS_LOAD_2_SHIFT);
 }

 regmap_multi_reg_write(cs43130->regmap, seq,
          seq_size);

 ret = wait_for_completion_timeout(&cs43130->hpload_evt,
       msecs_to_jiffies(1000));
 regmap_read(cs43130->regmap, CS43130_INT_MASK_4, &msk);
 if (!ret) {
  dev_err(component->dev, "Timeout waiting for HPLOAD interrupt\n");
  return -1;
 }

 dev_dbg(component->dev, "HP load stat: %x, INT_MASK_4: %x\n",
  cs43130->hpload_stat, msk);
 if ((cs43130->hpload_stat & (CS43130_HPLOAD_NO_DC_INT |
         CS43130_HPLOAD_UNPLUG_INT |
         CS43130_HPLOAD_OOR_INT)) ||
     !(cs43130->hpload_stat & rslt_msk)) {
  dev_dbg(component->dev, "HP load measure failed\n");
  return -1;
 }

 return 0;
}
