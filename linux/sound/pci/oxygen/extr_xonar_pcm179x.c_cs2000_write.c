
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xonar_pcm179x {size_t* cs2000_regs; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int I2C_DEVICE_CS2000 ;
 int oxygen_write_i2c (struct oxygen*,int ,size_t,size_t) ;

__attribute__((used)) static void cs2000_write(struct oxygen *chip, u8 reg, u8 value)
{
 struct xonar_pcm179x *data = chip->model_data;

 oxygen_write_i2c(chip, I2C_DEVICE_CS2000, reg, value);
 data->cs2000_regs[reg] = value;
}
