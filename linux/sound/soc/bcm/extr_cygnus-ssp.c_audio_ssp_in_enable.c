
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ i2s_cap_stream_cfg; scalar_t__ i2s_cfg; scalar_t__ bf_destch_ctrl; scalar_t__ bf_destch_cfg; } ;
struct cygnus_aio_port {int streams_on; TYPE_2__ regs; TYPE_1__* cygaud; } ;
struct TYPE_3__ {scalar_t__ i2s_in; scalar_t__ audio; } ;


 int BF_DST_CFGX_CAP_ENA ;
 int BIT (int ) ;
 int CAPTURE_STREAM_MASK ;
 int I2S_IN_STREAM_CFG_CAP_ENA ;
 int I2S_OUT_CFGX_CLK_ENA ;
 int I2S_OUT_CFGX_DATA_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void audio_ssp_in_enable(struct cygnus_aio_port *aio)
{
 u32 value;

 value = readl(aio->cygaud->audio + aio->regs.bf_destch_cfg);
 value |= BIT(BF_DST_CFGX_CAP_ENA);
 writel(value, aio->cygaud->audio + aio->regs.bf_destch_cfg);

 writel(0x1, aio->cygaud->audio + aio->regs.bf_destch_ctrl);

 value = readl(aio->cygaud->audio + aio->regs.i2s_cfg);
 value |= BIT(I2S_OUT_CFGX_CLK_ENA);
 value |= BIT(I2S_OUT_CFGX_DATA_ENABLE);
 writel(value, aio->cygaud->audio + aio->regs.i2s_cfg);

 value = readl(aio->cygaud->i2s_in + aio->regs.i2s_cap_stream_cfg);
 value |= BIT(I2S_IN_STREAM_CFG_CAP_ENA);
 writel(value, aio->cygaud->i2s_in + aio->regs.i2s_cap_stream_cfg);

 aio->streams_on |= CAPTURE_STREAM_MASK;
}
