
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fsi_stream {int chan; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;


 int CLK_RST ;
 scalar_t__ CRA ;
 scalar_t__ CRB ;
 scalar_t__ DMA_ON ;
 int OUT_DMAC ;
 int dmaengine_terminate_all (int ) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 scalar_t__ fsi_is_clk_master (struct fsi_priv*) ;
 scalar_t__ fsi_is_port_a (struct fsi_priv*) ;
 int fsi_master_mask_set (struct fsi_master*,int ,scalar_t__,scalar_t__) ;
 int fsi_reg_mask_set (struct fsi_priv*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int fsi_dma_push_start_stop(struct fsi_priv *fsi, struct fsi_stream *io,
     int start)
{
 struct fsi_master *master = fsi_get_master(fsi);
 u32 clk = fsi_is_port_a(fsi) ? CRA : CRB;
 u32 enable = start ? DMA_ON : 0;

 fsi_reg_mask_set(fsi, OUT_DMAC, DMA_ON, enable);

 dmaengine_terminate_all(io->chan);

 if (fsi_is_clk_master(fsi))
  fsi_master_mask_set(master, CLK_RST, clk, (enable) ? clk : 0);

 return 0;
}
