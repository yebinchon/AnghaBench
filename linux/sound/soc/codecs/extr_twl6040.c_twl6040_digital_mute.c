
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; int component; } ;





 int twl6040_mute_path (int ,int,int) ;

__attribute__((used)) static int twl6040_digital_mute(struct snd_soc_dai *dai, int mute)
{
 switch (dai->id) {
 case 128:
  twl6040_mute_path(dai->component, 130, mute);
  twl6040_mute_path(dai->component, 129, mute);
  break;
 case 130:
 case 129:
  twl6040_mute_path(dai->component, dai->id, mute);
  break;
 default:
  break;
 }

 return 0;
}
