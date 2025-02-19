
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xonar_cs43xx {int* cs4362a_regs; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 int CS4362A_ATAPI_A_L ;
 int CS4362A_ATAPI_A_LR ;
 int CS4362A_ATAPI_B_LR ;
 int CS4362A_ATAPI_B_R ;
 int CS4362A_ATAPI_MASK ;
 int cs4362a_write_cached (struct oxygen*,int,int) ;

__attribute__((used)) static void update_cs43xx_center_lfe_mix(struct oxygen *chip, bool mixed)
{
 struct xonar_cs43xx *data = chip->model_data;
 u8 reg;

 reg = data->cs4362a_regs[9] & ~CS4362A_ATAPI_MASK;
 if (mixed)
  reg |= CS4362A_ATAPI_B_LR | CS4362A_ATAPI_A_LR;
 else
  reg |= CS4362A_ATAPI_B_R | CS4362A_ATAPI_A_L;
 cs4362a_write_cached(chip, 9, reg);
}
