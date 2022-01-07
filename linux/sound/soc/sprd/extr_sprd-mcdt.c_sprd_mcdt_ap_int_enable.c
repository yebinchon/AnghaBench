
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_mcdt_dev {int dummy; } ;


 int BIT (int ) ;
 int MCDT_INT_MSK_CFG0 ;
 int sprd_mcdt_update (struct sprd_mcdt_dev*,int ,int ,int ) ;

__attribute__((used)) static void sprd_mcdt_ap_int_enable(struct sprd_mcdt_dev *mcdt, u8 channel,
        bool enable)
{
 if (enable)
  sprd_mcdt_update(mcdt, MCDT_INT_MSK_CFG0, BIT(channel),
     BIT(channel));
 else
  sprd_mcdt_update(mcdt, MCDT_INT_MSK_CFG0, 0, BIT(channel));
}
