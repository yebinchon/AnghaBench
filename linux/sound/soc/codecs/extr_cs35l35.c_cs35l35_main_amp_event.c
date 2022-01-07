
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int bst_vctl; int bst_pdn_fet_on; } ;
struct cs35l35_private {TYPE_1__ pdata; int regmap; int pdm_mode; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int CS35L35_AMP_MUTE_MASK ;
 int CS35L35_AMP_MUTE_SHIFT ;
 int CS35L35_BST_CTL_MASK ;
 int CS35L35_BST_CTL_SHIFT ;
 int CS35L35_BST_CVTR_V_CTL ;
 int CS35L35_INT_STATUS_1 ;
 int CS35L35_PDN_BST_FETOFF_SHIFT ;
 int CS35L35_PDN_BST_FETON_SHIFT ;
 int CS35L35_PDN_BST_MASK ;
 int CS35L35_PROTECT_CTL ;
 int CS35L35_PWRCTL2 ;




 int dev_err (int ,char*,int) ;
 int regmap_bulk_read (int ,int ,unsigned int**,int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct cs35l35_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l35_main_amp_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l35_private *cs35l35 = snd_soc_component_get_drvdata(component);
 unsigned int reg[4];
 int i;

 switch (event) {
 case 128:
  if (cs35l35->pdata.bst_pdn_fet_on)
   regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL2,
    CS35L35_PDN_BST_MASK,
    0 << CS35L35_PDN_BST_FETON_SHIFT);
  else
   regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL2,
    CS35L35_PDN_BST_MASK,
    0 << CS35L35_PDN_BST_FETOFF_SHIFT);
  break;
 case 130:
  usleep_range(5000, 5100);

  if (cs35l35->pdm_mode)
   regmap_update_bits(cs35l35->regmap,
     CS35L35_BST_CVTR_V_CTL,
     CS35L35_BST_CTL_MASK,
     0 << CS35L35_BST_CTL_SHIFT);

  regmap_update_bits(cs35l35->regmap, CS35L35_PROTECT_CTL,
   CS35L35_AMP_MUTE_MASK, 0);

  for (i = 0; i < 2; i++)
   regmap_bulk_read(cs35l35->regmap, CS35L35_INT_STATUS_1,
     &reg, ARRAY_SIZE(reg));

  break;
 case 129:
  regmap_update_bits(cs35l35->regmap, CS35L35_PROTECT_CTL,
    CS35L35_AMP_MUTE_MASK,
    1 << CS35L35_AMP_MUTE_SHIFT);
  if (cs35l35->pdata.bst_pdn_fet_on)
   regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL2,
    CS35L35_PDN_BST_MASK,
    1 << CS35L35_PDN_BST_FETON_SHIFT);
  else
   regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL2,
    CS35L35_PDN_BST_MASK,
    1 << CS35L35_PDN_BST_FETOFF_SHIFT);
  break;
 case 131:
  usleep_range(5000, 5100);




  if (cs35l35->pdm_mode)
   regmap_update_bits(cs35l35->regmap,
     CS35L35_BST_CVTR_V_CTL,
     CS35L35_BST_CTL_MASK,
     cs35l35->pdata.bst_vctl
     << CS35L35_BST_CTL_SHIFT);

  break;
 default:
  dev_err(component->dev, "Invalid event = 0x%x\n", event);
 }
 return 0;
}
