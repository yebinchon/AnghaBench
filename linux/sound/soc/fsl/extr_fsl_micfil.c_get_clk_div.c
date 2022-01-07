
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_micfil {int mclk; int regmap; } ;


 int REG_MICFIL_CTRL2 ;
 long clk_get_rate (int ) ;
 int get_pdm_clk (struct fsl_micfil*,unsigned int) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static inline int get_clk_div(struct fsl_micfil *micfil,
         unsigned int rate)
{
 u32 ctrl2_reg;
 long mclk_rate;
 int clk_div;

 regmap_read(micfil->regmap, REG_MICFIL_CTRL2, &ctrl2_reg);

 mclk_rate = clk_get_rate(micfil->mclk);

 clk_div = mclk_rate / (get_pdm_clk(micfil, rate) * 2);

 return clk_div;
}
