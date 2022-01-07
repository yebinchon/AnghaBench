
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_mcdt_dev {int dummy; } ;


 int BIT (int ) ;
 int MCDT_FIFO_CLR ;
 int sprd_mcdt_update (struct sprd_mcdt_dev*,int ,int ,int ) ;

__attribute__((used)) static void sprd_mcdt_dac_fifo_clear(struct sprd_mcdt_dev *mcdt, u8 channel)
{
 sprd_mcdt_update(mcdt, MCDT_FIFO_CLR, BIT(channel), BIT(channel));
}
