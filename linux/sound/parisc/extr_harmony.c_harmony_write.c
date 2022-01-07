
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {unsigned int iobase; } ;


 int __raw_writel (unsigned long,unsigned int) ;

__attribute__((used)) static inline void
harmony_write(struct snd_harmony *h, unsigned r, unsigned long v)
{
 __raw_writel(v, h->iobase + r);
}
