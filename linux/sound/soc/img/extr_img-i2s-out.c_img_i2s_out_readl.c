
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_i2s_out {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 img_i2s_out_readl(struct img_i2s_out *i2s, u32 reg)
{
 return readl(i2s->base + reg);
}
