
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int dummy; } ;


 int BP ;
 int SE ;
 int a_mclk ;
 int b_mclk ;
 int fsi_core_mask_set (struct fsi_master*,int ,int,int) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 scalar_t__ fsi_is_port_a (struct fsi_priv*) ;

__attribute__((used)) static void fsi_spdif_clk_ctrl(struct fsi_priv *fsi, int enable)
{
 struct fsi_master *master = fsi_get_master(fsi);
 u32 mask, val;

 mask = BP | SE;
 val = enable ? mask : 0;

 fsi_is_port_a(fsi) ?
  fsi_core_mask_set(master, a_mclk, mask, val) :
  fsi_core_mask_set(master, b_mclk, mask, val);
}
