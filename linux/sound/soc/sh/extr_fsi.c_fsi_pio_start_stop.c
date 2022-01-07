
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;


 int CLK_RST ;
 int CRA ;
 int CRB ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int fsi_irq_disable (struct fsi_priv*,struct fsi_stream*) ;
 int fsi_irq_enable (struct fsi_priv*,struct fsi_stream*) ;
 scalar_t__ fsi_is_clk_master (struct fsi_priv*) ;
 scalar_t__ fsi_is_port_a (struct fsi_priv*) ;
 int fsi_master_mask_set (struct fsi_master*,int ,int ,int ) ;

__attribute__((used)) static int fsi_pio_start_stop(struct fsi_priv *fsi, struct fsi_stream *io,
          int enable)
{
 struct fsi_master *master = fsi_get_master(fsi);
 u32 clk = fsi_is_port_a(fsi) ? CRA : CRB;

 if (enable)
  fsi_irq_enable(fsi, io);
 else
  fsi_irq_disable(fsi, io);

 if (fsi_is_clk_master(fsi))
  fsi_master_mask_set(master, CLK_RST, clk, (enable) ? clk : 0);

 return 0;
}
