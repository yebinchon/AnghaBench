
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_bt87x {scalar_t__ mmio; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void snd_bt87x_writel(struct snd_bt87x *chip, u32 reg, u32 value)
{
 writel(value, chip->mmio + reg);
}
