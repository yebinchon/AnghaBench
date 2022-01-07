
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fsi_port_info {int flags; } ;
struct fsi_priv {int spdif; int clk_cpg; int enable_stream; } ;


 int SH_FSI_CLK_CPG ;
 int SH_FSI_ENABLE_STREAM_MODE ;
 int SH_FSI_FMT_SPDIF ;

__attribute__((used)) static void fsi_port_info_init(struct fsi_priv *fsi,
          struct sh_fsi_port_info *info)
{
 if (info->flags & SH_FSI_FMT_SPDIF)
  fsi->spdif = 1;

 if (info->flags & SH_FSI_CLK_CPG)
  fsi->clk_cpg = 1;

 if (info->flags & SH_FSI_ENABLE_STREAM_MODE)
  fsi->enable_stream = 1;
}
