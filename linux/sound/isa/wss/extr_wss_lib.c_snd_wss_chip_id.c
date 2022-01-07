
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wss {int hardware; TYPE_1__* card; } ;
struct TYPE_2__ {char const* shortname; } ;
const char *snd_wss_chip_id(struct snd_wss *chip)
{
 switch (chip->hardware) {
 case 141:
  return "CS4231";
 case 140:
  return "CS4231A";
 case 139:
  return "CS4232";
 case 138:
  return "CS4232A";
 case 137:
  return "CS4235";
 case 136:
  return "CS4236";
 case 135:
  return "CS4236B";
 case 134:
  return "CS4237B";
 case 133:
  return "CS4238B";
 case 132:
  return "CS4239";
 case 130:
  return "AMD InterWave";
 case 129:
  return chip->card->shortname;
 case 145:
  return "AD1845";
 case 128:
  return "OPTi 93x";
 case 144:
  return "AD1847";
 case 143:
  return "AD1848";
 case 131:
  return "CS4248";
 case 142:
  return "CMI8330/C3D";
 default:
  return "???";
 }
}
