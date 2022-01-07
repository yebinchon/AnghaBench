
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ad1889 {unsigned int iobase; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void
ad1889_writel(struct snd_ad1889 *chip, unsigned reg, u32 val)
{
 writel(val, chip->iobase + reg);
}
