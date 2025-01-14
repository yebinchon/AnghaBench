
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int size; int type; } ;
struct TYPE_12__ {TYPE_5__ hdr; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_10__ {int number_of_channels; int valid_bit_depth; int bit_depth; int sampling_frequency; TYPE_1__ hdr; } ;
union skl_clk_ctrl_ipc {TYPE_6__ mclk; TYPE_4__ sclk_fs; } ;
typedef scalar_t__ u8 ;
struct wav_fmt {int channels; int bits_per_sample; int samples_per_sec; } ;
struct skl_tlv_hdr {int dummy; } ;
struct skl_dmactrl_sclkfs_cfg {int dummy; } ;
struct skl_dmactrl_mclk_cfg {int dummy; } ;
struct skl_clk_rate_cfg_table {scalar_t__ config; union skl_clk_ctrl_ipc dma_ctl_ipc; } ;
struct TYPE_8__ {int valid_bits_per_sample; } ;
struct TYPE_9__ {TYPE_2__ sample; struct wav_fmt fmt; } ;
struct nhlt_fmt_cfg {TYPE_3__ fmt_ext; } ;


 int DMA_CLK_CONTROLS ;
 scalar_t__ SKL_SCLK_FS ;

__attribute__((used)) static void skl_fill_clk_ipc(struct skl_clk_rate_cfg_table *rcfg, u8 clk_type)
{
 struct nhlt_fmt_cfg *fmt_cfg;
 union skl_clk_ctrl_ipc *ipc;
 struct wav_fmt *wfmt;

 if (!rcfg)
  return;

 ipc = &rcfg->dma_ctl_ipc;
 if (clk_type == SKL_SCLK_FS) {
  fmt_cfg = (struct nhlt_fmt_cfg *)rcfg->config;
  wfmt = &fmt_cfg->fmt_ext.fmt;


  ipc->sclk_fs.hdr.size = sizeof(struct skl_dmactrl_sclkfs_cfg) -
      sizeof(struct skl_tlv_hdr);
  ipc->sclk_fs.sampling_frequency = wfmt->samples_per_sec;
  ipc->sclk_fs.bit_depth = wfmt->bits_per_sample;
  ipc->sclk_fs.valid_bit_depth =
   fmt_cfg->fmt_ext.sample.valid_bits_per_sample;
  ipc->sclk_fs.number_of_channels = wfmt->channels;
 } else {
  ipc->mclk.hdr.type = DMA_CLK_CONTROLS;

  ipc->mclk.hdr.size = sizeof(struct skl_dmactrl_mclk_cfg) -
      sizeof(struct skl_tlv_hdr);
 }
}
