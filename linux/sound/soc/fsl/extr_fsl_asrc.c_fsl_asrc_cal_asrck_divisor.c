
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_asrc_pair {int dummy; } ;


 int ASRCDRi_AxCPi_WIDTH ;

__attribute__((used)) static u32 fsl_asrc_cal_asrck_divisor(struct fsl_asrc_pair *pair, u32 div)
{
 u32 ps;


 for (ps = 0; div > 8; ps++)
  div >>= 1;

 return ((div - 1) << ASRCDRi_AxCPi_WIDTH) | ps;
}
