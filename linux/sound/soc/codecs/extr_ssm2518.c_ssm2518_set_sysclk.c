
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2518 {unsigned int sysclk; int regmap; int * constraints; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 unsigned int SSM2518_POWER1_NO_BCLK ;
 int SSM2518_REG_POWER1 ;
 int SSM2518_SYSCLK ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct ssm2518* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int ssm2518_constraints_12288000 ;
 int ssm2518_constraints_2048000 ;
 int ssm2518_constraints_2822000 ;
 int ssm2518_constraints_3072000 ;

__attribute__((used)) static int ssm2518_set_sysclk(struct snd_soc_component *component, int clk_id,
 int source, unsigned int freq, int dir)
{
 struct ssm2518 *ssm2518 = snd_soc_component_get_drvdata(component);
 unsigned int val;

 if (clk_id != SSM2518_SYSCLK)
  return -EINVAL;

 switch (source) {
 case 128:
  val = 0;
  break;
 case 129:



  val = SSM2518_POWER1_NO_BCLK;
  break;
 default:
  return -EINVAL;
 }

 switch (freq) {
 case 0:
  ssm2518->constraints = ((void*)0);
  break;
 case 2048000:
 case 4096000:
 case 8192000:
 case 3200000:
 case 6400000:
 case 12800000:
  ssm2518->constraints = &ssm2518_constraints_2048000;
  break;
 case 2822000:
 case 5644800:
 case 11289600:
 case 16934400:
 case 22579200:
 case 33868800:
 case 4410000:
 case 8820000:
 case 17640000:
  ssm2518->constraints = &ssm2518_constraints_2822000;
  break;
 case 3072000:
 case 6144000:
 case 38864000:
 case 4800000:
 case 9600000:
 case 19200000:
  ssm2518->constraints = &ssm2518_constraints_3072000;
  break;
 case 12288000:
 case 16384000:
 case 24576000:
  ssm2518->constraints = &ssm2518_constraints_12288000;
  break;
 default:
  return -EINVAL;
 }

 ssm2518->sysclk = freq;

 return regmap_update_bits(ssm2518->regmap, SSM2518_REG_POWER1,
   SSM2518_POWER1_NO_BCLK, val);
}
