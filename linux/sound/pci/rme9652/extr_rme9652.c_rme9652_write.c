
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ iobase; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void rme9652_write(struct snd_rme9652 *rme9652, int reg, int val)
{
 writel(val, rme9652->iobase + reg);
}
