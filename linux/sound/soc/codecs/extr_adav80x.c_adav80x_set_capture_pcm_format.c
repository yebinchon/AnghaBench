
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adav80x {int regmap; } ;


 unsigned int ADAV80X_CAPTRUE_WORD_LEN18 ;
 unsigned int ADAV80X_CAPTURE_WORD_LEN16 ;
 unsigned int ADAV80X_CAPTURE_WORD_LEN20 ;
 unsigned int ADAV80X_CAPTURE_WORD_LEN24 ;
 int ADAV80X_CAPTURE_WORD_LEN_MASK ;
 int EINVAL ;
 int ** adav80x_port_ctrl_regs ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adav80x_set_capture_pcm_format(struct snd_soc_component *component,
  struct snd_soc_dai *dai, struct snd_pcm_hw_params *params)
{
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 unsigned int val;

 switch (params_width(params)) {
 case 16:
  val = ADAV80X_CAPTURE_WORD_LEN16;
  break;
 case 18:
  val = ADAV80X_CAPTRUE_WORD_LEN18;
  break;
 case 20:
  val = ADAV80X_CAPTURE_WORD_LEN20;
  break;
 case 24:
  val = ADAV80X_CAPTURE_WORD_LEN24;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(adav80x->regmap, adav80x_port_ctrl_regs[dai->id][0],
  ADAV80X_CAPTURE_WORD_LEN_MASK, val);

 return 0;
}
