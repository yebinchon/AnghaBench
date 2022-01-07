
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {scalar_t__ mmio; } ;


 int __raw_writel (unsigned long,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static inline void WR(struct au1xpsc_audio_data *ctx, int reg, unsigned long v)
{
 __raw_writel(v, ctx->mmio + reg);
 wmb();
}
