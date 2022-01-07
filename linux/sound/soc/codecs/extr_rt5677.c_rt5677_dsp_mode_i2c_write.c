
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5677_priv {int dummy; } ;


 int rt5677_dsp_mode_i2c_write_addr (struct rt5677_priv*,int,unsigned int,int) ;

__attribute__((used)) static int rt5677_dsp_mode_i2c_write(struct rt5677_priv *rt5677,
  unsigned int reg, unsigned int value)
{
 return rt5677_dsp_mode_i2c_write_addr(rt5677, 0x18020000 + reg * 2,
  value, 0x0001);
}
