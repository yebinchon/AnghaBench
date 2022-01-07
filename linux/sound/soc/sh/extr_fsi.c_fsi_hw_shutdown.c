
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int dummy; } ;
struct device {int dummy; } ;


 int fsi_clk_disable (struct device*,struct fsi_priv*) ;
 scalar_t__ fsi_is_clk_master (struct fsi_priv*) ;

__attribute__((used)) static int fsi_hw_shutdown(struct fsi_priv *fsi,
       struct device *dev)
{

 if (fsi_is_clk_master(fsi))
  return fsi_clk_disable(dev, fsi);

 return 0;
}
