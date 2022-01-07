
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sprd_mcdt_dev {scalar_t__ base; } ;


 scalar_t__ MCDT_CH0_TXD ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void sprd_mcdt_dac_write_fifo(struct sprd_mcdt_dev *mcdt, u8 channel,
         u32 val)
{
 u32 reg = MCDT_CH0_TXD + channel * 4;

 writel_relaxed(val, mcdt->base + reg);
}
