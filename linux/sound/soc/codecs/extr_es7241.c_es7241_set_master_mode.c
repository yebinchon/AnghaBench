
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es7241_data {int dummy; } ;
struct es7241_clock_mode {unsigned int mst_mfs; int mst_m1; int mst_m0; } ;


 int EINVAL ;
 int es7241_set_mode (struct es7241_data*,int ,int ) ;

__attribute__((used)) static int es7241_set_master_mode(struct es7241_data *priv,
      const struct es7241_clock_mode *mode,
      unsigned int mfs)
{




 if (mfs && mfs != mode->mst_mfs)
  return -EINVAL;

 es7241_set_mode(priv, mode->mst_m0, mode->mst_m1);

 return 0;
}
