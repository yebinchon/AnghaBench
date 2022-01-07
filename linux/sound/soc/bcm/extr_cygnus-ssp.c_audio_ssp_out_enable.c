
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ bf_sourcech_cfg; scalar_t__ bf_sourcech_ctrl; scalar_t__ i2s_cfg; scalar_t__ i2s_stream_cfg; } ;
struct cygnus_aio_port {int port_type; int portnum; TYPE_2__* cygaud; TYPE_1__ regs; int streams_on; } ;
struct TYPE_4__ {int dev; scalar_t__ audio; } ;


 int BF_SRC_CFGX_SFIFO_ENA ;
 int BIT (int ) ;
 int EINVAL ;
 int I2S_OUT_CFGX_CLK_ENA ;
 int I2S_OUT_CFGX_DATA_ENABLE ;
 int I2S_OUT_STREAM_ENA ;
 int PLAYBACK_STREAM_MASK ;


 scalar_t__ SPDIF_FORMAT_CFG_OFFSET ;
 int dev_err (int ,char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int audio_ssp_out_enable(struct cygnus_aio_port *aio)
{
 u32 value;
 int status = 0;

 switch (aio->port_type) {
 case 128:
  value = readl(aio->cygaud->audio + aio->regs.i2s_stream_cfg);
  value |= BIT(I2S_OUT_STREAM_ENA);
  writel(value, aio->cygaud->audio + aio->regs.i2s_stream_cfg);

  writel(1, aio->cygaud->audio + aio->regs.bf_sourcech_ctrl);

  value = readl(aio->cygaud->audio + aio->regs.i2s_cfg);
  value |= BIT(I2S_OUT_CFGX_CLK_ENA);
  value |= BIT(I2S_OUT_CFGX_DATA_ENABLE);
  writel(value, aio->cygaud->audio + aio->regs.i2s_cfg);

  value = readl(aio->cygaud->audio + aio->regs.bf_sourcech_cfg);
  value |= BIT(BF_SRC_CFGX_SFIFO_ENA);
  writel(value, aio->cygaud->audio + aio->regs.bf_sourcech_cfg);

  aio->streams_on |= PLAYBACK_STREAM_MASK;
  break;
 case 129:
  value = readl(aio->cygaud->audio + SPDIF_FORMAT_CFG_OFFSET);
  value |= 0x3;
  writel(value, aio->cygaud->audio + SPDIF_FORMAT_CFG_OFFSET);

  writel(1, aio->cygaud->audio + aio->regs.bf_sourcech_ctrl);

  value = readl(aio->cygaud->audio + aio->regs.bf_sourcech_cfg);
  value |= BIT(BF_SRC_CFGX_SFIFO_ENA);
  writel(value, aio->cygaud->audio + aio->regs.bf_sourcech_cfg);
  break;
 default:
  dev_err(aio->cygaud->dev,
   "Port not supported %d\n", aio->portnum);
  status = -EINVAL;
 }

 return status;
}
