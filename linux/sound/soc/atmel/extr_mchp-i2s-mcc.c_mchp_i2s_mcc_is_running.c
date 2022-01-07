
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mchp_i2s_mcc_dev {int regmap; } ;


 int MCHP_I2SMCC_SR ;
 int MCHP_I2SMCC_SR_RXEN ;
 int MCHP_I2SMCC_SR_TXEN ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mchp_i2s_mcc_is_running(struct mchp_i2s_mcc_dev *dev)
{
 u32 sr;

 regmap_read(dev->regmap, MCHP_I2SMCC_SR, &sr);
 return !!(sr & (MCHP_I2SMCC_SR_TXEN | MCHP_I2SMCC_SR_RXEN));
}
