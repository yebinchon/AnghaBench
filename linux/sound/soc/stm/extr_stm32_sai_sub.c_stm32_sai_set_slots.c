
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {scalar_t__ slot_width; scalar_t__ data_size; int slots; int slot_mask; int regmap; } ;
struct snd_soc_dai {int dev; } ;


 int EINVAL ;
 int SAI_SLOT_SIZE_AUTO ;
 int SAI_XSLOTR_NBSLOT_MASK ;
 int SAI_XSLOTR_NBSLOT_SET (int) ;
 int SAI_XSLOTR_SLOTEN_MASK ;
 int SAI_XSLOTR_SLOTEN_SET (int) ;
 int SAI_XSLOTR_SLOTSZ_MASK ;
 int SAI_XSLOTR_SLOTSZ_SET (int ) ;
 int STM_SAI_SLOTR_REGX ;
 int dev_dbg (int ,char*,int,scalar_t__) ;
 int dev_err (int ,char*,scalar_t__) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_sai_set_slots(struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int slotr, slot_sz;

 regmap_read(sai->regmap, STM_SAI_SLOTR_REGX, &slotr);





 slot_sz = slotr & SAI_XSLOTR_SLOTSZ_MASK;
 if (slot_sz == SAI_XSLOTR_SLOTSZ_SET(SAI_SLOT_SIZE_AUTO))
  sai->slot_width = sai->data_size;

 if (sai->slot_width < sai->data_size) {
  dev_err(cpu_dai->dev,
   "Data size %d larger than slot width\n",
   sai->data_size);
  return -EINVAL;
 }


 if (!sai->slots)
  sai->slots = 2;


 regmap_update_bits(sai->regmap, STM_SAI_SLOTR_REGX,
      SAI_XSLOTR_NBSLOT_MASK,
      SAI_XSLOTR_NBSLOT_SET((sai->slots - 1)));


 if (!(slotr & SAI_XSLOTR_SLOTEN_MASK)) {
  sai->slot_mask = (1 << sai->slots) - 1;
  regmap_update_bits(sai->regmap,
       STM_SAI_SLOTR_REGX, SAI_XSLOTR_SLOTEN_MASK,
       SAI_XSLOTR_SLOTEN_SET(sai->slot_mask));
 }

 dev_dbg(cpu_dai->dev, "Slots %d, slot width %d\n",
  sai->slots, sai->slot_width);

 return 0;
}
