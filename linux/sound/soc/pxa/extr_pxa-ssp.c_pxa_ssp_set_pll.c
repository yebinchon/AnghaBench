
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ssp_priv {struct ssp_device* ssp; } ;
struct ssp_device {scalar_t__ type; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ PXA3xx_SSP ;
 int SSACD ;
 int SSACDD ;
 int dev_dbg (int *,char*,int,unsigned int) ;
 int do_div (int,unsigned int) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static int pxa_ssp_set_pll(struct ssp_priv *priv, unsigned int freq)
{
 struct ssp_device *ssp = priv->ssp;
 u32 ssacd = pxa_ssp_read_reg(ssp, SSACD) & ~0x70;

 if (ssp->type == PXA3xx_SSP)
  pxa_ssp_write_reg(ssp, SSACDD, 0);

 switch (freq) {
 case 5622000:
  break;
 case 11345000:
  ssacd |= (0x1 << 4);
  break;
 case 12235000:
  ssacd |= (0x2 << 4);
  break;
 case 14857000:
  ssacd |= (0x3 << 4);
  break;
 case 32842000:
  ssacd |= (0x4 << 4);
  break;
 case 48000000:
  ssacd |= (0x5 << 4);
  break;
 case 0:

  break;

 default:



  if (ssp->type == PXA3xx_SSP) {
   u32 val;
   u64 tmp = 19968;

   tmp *= 1000000;
   do_div(tmp, freq);
   val = tmp;

   val = (val << 16) | 64;
   pxa_ssp_write_reg(ssp, SSACDD, val);

   ssacd |= (0x6 << 4);

   dev_dbg(&ssp->pdev->dev,
    "Using SSACDD %x to supply %uHz\n",
    val, freq);
   break;
  }

  return -EINVAL;
 }

 pxa_ssp_write_reg(ssp, SSACD, ssacd);

 return 0;
}
