
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adau {int regmap; } ;


 unsigned int ADAU1781_INPUT_DIFFERNTIAL ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int adau1781_set_input_mode(struct adau *adau, unsigned int reg,
 bool differential)
{
 unsigned int val;

 if (differential)
  val = ADAU1781_INPUT_DIFFERNTIAL;
 else
  val = 0;

 return regmap_update_bits(adau->regmap, reg,
  ADAU1781_INPUT_DIFFERNTIAL, val);
}
