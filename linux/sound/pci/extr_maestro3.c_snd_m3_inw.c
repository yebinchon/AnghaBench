
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {scalar_t__ iobase; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static inline u16 snd_m3_inw(struct snd_m3 *chip, unsigned long reg)
{
 return inw(chip->iobase + reg);
}
