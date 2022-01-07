
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda7419_vol_control {scalar_t__ reg; scalar_t__ rreg; } ;



__attribute__((used)) static inline bool tda7419_vol_is_stereo(struct tda7419_vol_control *tvc)
{
 if (tvc->reg == tvc->rreg)
  return 0;

 return 1;
}
