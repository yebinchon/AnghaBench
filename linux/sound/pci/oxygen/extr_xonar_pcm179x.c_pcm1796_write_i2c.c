
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int I2C_DEVICE_PCM1796 (unsigned int) ;
 int oxygen_write_i2c (struct oxygen*,int ,int ,int ) ;

__attribute__((used)) static inline void pcm1796_write_i2c(struct oxygen *chip, unsigned int codec,
         u8 reg, u8 value)
{
 oxygen_write_i2c(chip, I2C_DEVICE_PCM1796(codec), reg, value);
}
