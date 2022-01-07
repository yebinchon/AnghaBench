
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_clk {scalar_t__ count; int (* set_rate ) (struct device*,struct fsi_priv*) ;int div; int ick; int xck; } ;
struct fsi_priv {struct fsi_clk clock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int clk_enable (int ) ;
 int fsi_clk_invalid (struct fsi_priv*) ;
 int fsi_clk_is_valid (struct fsi_priv*) ;
 int stub1 (struct device*,struct fsi_priv*) ;

__attribute__((used)) static int fsi_clk_enable(struct device *dev,
     struct fsi_priv *fsi)
{
 struct fsi_clk *clock = &fsi->clock;
 int ret = -EINVAL;

 if (!fsi_clk_is_valid(fsi))
  return ret;

 if (0 == clock->count) {
  ret = clock->set_rate(dev, fsi);
  if (ret < 0) {
   fsi_clk_invalid(fsi);
   return ret;
  }

  clk_enable(clock->xck);
  clk_enable(clock->ick);
  clk_enable(clock->div);

  clock->count++;
 }

 return ret;
}
