
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {scalar_t__ iobase; } ;


 int outw (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_m3_outw(struct snd_m3 *chip, u16 value, unsigned long reg)
{
 outw(value, chip->iobase + reg);
}
