
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_clk {int div; int ick; int xck; int count; } ;
struct fsi_priv {struct fsi_clk clock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int clk_disable (int ) ;
 int fsi_clk_is_valid (struct fsi_priv*) ;

__attribute__((used)) static int fsi_clk_disable(struct device *dev,
       struct fsi_priv *fsi)
{
 struct fsi_clk *clock = &fsi->clock;

 if (!fsi_clk_is_valid(fsi))
  return -EINVAL;

 if (1 == clock->count--) {
  clk_disable(clock->xck);
  clk_disable(clock->ick);
  clk_disable(clock->div);
 }

 return 0;
}
