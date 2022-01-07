
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int clk_master; } ;



__attribute__((used)) static int fsi_is_clk_master(struct fsi_priv *fsi)
{
 return fsi->clk_master;
}
