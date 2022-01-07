
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 int RT5640_I2S1_SDP ;
 int RT5640_I2S_IF_MASK ;
 int RT5640_I2S_IF_SFT ;
 int RT5640_U_IF1 ;
 int RT5640_U_IF2 ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static int get_sdp_info(struct snd_soc_component *component, int dai_id)
{
 int ret = 0, val;

 if (component == ((void*)0))
  return -EINVAL;

 val = snd_soc_component_read32(component, RT5640_I2S1_SDP);
 val = (val & RT5640_I2S_IF_MASK) >> RT5640_I2S_IF_SFT;
 switch (dai_id) {
 case 137:
  switch (val) {
  case 134:
  case 133:
   ret |= RT5640_U_IF1;
   break;
  case 135:
   ret |= RT5640_U_IF1;

  case 129:
  case 132:
   ret |= RT5640_U_IF2;
   break;
  }
  break;

 case 136:
  switch (val) {
  case 130:
  case 132:
   ret |= RT5640_U_IF1;
   break;
  case 131:
   ret |= RT5640_U_IF1;

  case 134:
  case 128:
   ret |= RT5640_U_IF2;
   break;
  }
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
