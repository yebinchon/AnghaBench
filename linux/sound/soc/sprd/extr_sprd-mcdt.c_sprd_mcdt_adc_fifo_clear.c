
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sprd_mcdt_dev {int dummy; } ;


 int BIT (scalar_t__) ;
 scalar_t__ MCDT_ADC_FIFO_SHIFT ;
 int MCDT_FIFO_CLR ;
 int sprd_mcdt_update (struct sprd_mcdt_dev*,int ,int ,int ) ;

__attribute__((used)) static void sprd_mcdt_adc_fifo_clear(struct sprd_mcdt_dev *mcdt, u8 channel)
{
 u32 shift = MCDT_ADC_FIFO_SHIFT + channel;

 sprd_mcdt_update(mcdt, MCDT_FIFO_CLR, BIT(shift), BIT(shift));
}
