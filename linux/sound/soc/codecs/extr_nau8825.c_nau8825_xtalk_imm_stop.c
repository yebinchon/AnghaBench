
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int regmap; } ;


 int NAU8825_IMM_EN ;
 int NAU8825_REG_IMM_MODE_CTRL ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void nau8825_xtalk_imm_stop(struct nau8825 *nau8825)
{

 regmap_update_bits(nau8825->regmap,
  NAU8825_REG_IMM_MODE_CTRL, NAU8825_IMM_EN, 0);
}
