
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {int dummy; } ;


 unsigned int SSPA_SP_S_EN ;
 unsigned int SSPA_SP_WEN ;
 int SSPA_TXSP ;
 unsigned int mmp_sspa_read_reg (struct ssp_device*,int ) ;
 int mmp_sspa_write_reg (struct ssp_device*,int ,unsigned int) ;

__attribute__((used)) static void mmp_sspa_tx_disable(struct ssp_device *sspa)
{
 unsigned int sspa_sp;

 sspa_sp = mmp_sspa_read_reg(sspa, SSPA_TXSP);
 sspa_sp &= ~SSPA_SP_S_EN;
 sspa_sp |= SSPA_SP_WEN;
 mmp_sspa_write_reg(sspa, SSPA_TXSP, sspa_sp);
}
