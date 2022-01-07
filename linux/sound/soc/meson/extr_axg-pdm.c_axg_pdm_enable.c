
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int PDM_CTRL ;
 int PDM_CTRL_EN ;
 int PDM_CTRL_RST_FIFO ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void axg_pdm_enable(struct regmap *map)
{

 regmap_update_bits(map, PDM_CTRL, PDM_CTRL_RST_FIFO, PDM_CTRL_RST_FIFO);
 regmap_update_bits(map, PDM_CTRL, PDM_CTRL_RST_FIFO, 0);


 regmap_update_bits(map, PDM_CTRL, PDM_CTRL_EN, PDM_CTRL_EN);
}
