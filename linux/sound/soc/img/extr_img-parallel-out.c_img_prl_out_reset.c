
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_prl_out {int rst; } ;


 int IMG_PRL_OUT_CTL ;
 int IMG_PRL_OUT_CTL_ME_MASK ;
 int img_prl_out_readl (struct img_prl_out*,int ) ;
 int img_prl_out_writel (struct img_prl_out*,int,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void img_prl_out_reset(struct img_prl_out *prl)
{
 u32 ctl;

 ctl = img_prl_out_readl(prl, IMG_PRL_OUT_CTL) &
   ~IMG_PRL_OUT_CTL_ME_MASK;

 reset_control_assert(prl->rst);
 reset_control_deassert(prl->rst);

 img_prl_out_writel(prl, ctl, IMG_PRL_OUT_CTL);
}
