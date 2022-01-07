
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xonar_cs43xx {size_t* cs4362a_regs; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 int cs4362a_write (struct oxygen*,size_t,size_t) ;

__attribute__((used)) static void cs4362a_write_cached(struct oxygen *chip, u8 reg, u8 value)
{
 struct xonar_cs43xx *data = chip->model_data;

 if (value != data->cs4362a_regs[reg])
  cs4362a_write(chip, reg, value);
}
