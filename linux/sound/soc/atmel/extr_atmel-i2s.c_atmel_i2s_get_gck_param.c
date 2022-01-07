
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_i2s_gck_param {scalar_t__ fs; } ;
struct atmel_i2s_dev {struct atmel_i2s_gck_param const* gck_param; int dev; int gclk; } ;


 int ARRAY_SIZE (struct atmel_i2s_gck_param*) ;
 int EINVAL ;
 int INT_MAX ;
 int abs (scalar_t__) ;
 int dev_err (int ,char*) ;
 struct atmel_i2s_gck_param* gck_params ;

__attribute__((used)) static int atmel_i2s_get_gck_param(struct atmel_i2s_dev *dev, int fs)
{
 int i, best;

 if (!dev->gclk) {
  dev_err(dev->dev, "cannot generate the I2S Master Clock\n");
  return -EINVAL;
 }





 dev->gck_param = ((void*)0);
 best = INT_MAX;
 for (i = 0; i < ARRAY_SIZE(gck_params); ++i) {
  const struct atmel_i2s_gck_param *gck_param = &gck_params[i];
  int val = abs(fs - gck_param->fs);

  if (val < best) {
   best = val;
   dev->gck_param = gck_param;
  }
 }

 return 0;
}
