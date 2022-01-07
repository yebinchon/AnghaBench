
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_cs43xx {int* cs4398_regs; int* cs4362a_regs; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 int CS4362A_AMUTE ;
 int CS4362A_CPEN ;
 int CS4362A_DIF_LJUST ;
 int CS4362A_MUTEC_6 ;
 int CS4362A_PDN ;
 int CS4362A_RMP_UP ;
 int CS4362A_SOFT_RAMP ;
 int CS4362A_ZERO_CROSS ;
 int CS4398_ATAPI_A_L ;
 int CS4398_ATAPI_B_R ;
 int CS4398_CPEN ;
 int CS4398_PDN ;
 int cs4362a_write (struct oxygen*,int,int) ;
 int cs4398_write (struct oxygen*,int,int) ;

__attribute__((used)) static void cs43xx_registers_init(struct oxygen *chip)
{
 struct xonar_cs43xx *data = chip->model_data;
 unsigned int i;


 cs4398_write(chip, 8, CS4398_CPEN | CS4398_PDN);
 cs4362a_write(chip, 0x01, CS4362A_PDN | CS4362A_CPEN);

 cs4398_write(chip, 2, data->cs4398_regs[2]);
 cs4398_write(chip, 3, CS4398_ATAPI_B_R | CS4398_ATAPI_A_L);
 cs4398_write(chip, 4, data->cs4398_regs[4]);
 cs4398_write(chip, 5, data->cs4398_regs[5]);
 cs4398_write(chip, 6, data->cs4398_regs[6]);
 cs4398_write(chip, 7, data->cs4398_regs[7]);
 cs4362a_write(chip, 0x02, CS4362A_DIF_LJUST);
 cs4362a_write(chip, 0x03, CS4362A_MUTEC_6 | CS4362A_AMUTE |
        CS4362A_RMP_UP | CS4362A_ZERO_CROSS | CS4362A_SOFT_RAMP);
 cs4362a_write(chip, 0x04, data->cs4362a_regs[0x04]);
 cs4362a_write(chip, 0x05, 0);
 for (i = 6; i <= 14; ++i)
  cs4362a_write(chip, i, data->cs4362a_regs[i]);

 cs4398_write(chip, 8, CS4398_CPEN);
 cs4362a_write(chip, 0x01, CS4362A_CPEN);
}
