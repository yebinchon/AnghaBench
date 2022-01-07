
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int ktime_t ;


 int ktime_add_ns (int ,int ) ;
 int reciprocal_scale (int ,int ) ;

__attribute__((used)) static ktime_t cobalt_control(ktime_t t,
         u64 interval,
         u32 rec_inv_sqrt)
{
 return ktime_add_ns(t, reciprocal_scale(interval,
      rec_inv_sqrt));
}
