
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xonar_cs43xx {size_t* cs4398_regs; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 size_t ARRAY_SIZE (size_t*) ;
 int I2C_DEVICE_CS4398 ;
 int oxygen_write_i2c (struct oxygen*,int ,size_t,size_t) ;

__attribute__((used)) static void cs4398_write(struct oxygen *chip, u8 reg, u8 value)
{
 struct xonar_cs43xx *data = chip->model_data;

 oxygen_write_i2c(chip, I2C_DEVICE_CS4398, reg, value);
 if (reg < ARRAY_SIZE(data->cs4398_regs))
  data->cs4398_regs[reg] = value;
}
