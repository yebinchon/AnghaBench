
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_data {scalar_t__ mmio; } ;


 unsigned long __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long RD(struct au1xpsc_audio_data *ctx, int reg)
{
 return __raw_readl(ctx->mmio + reg);
}
