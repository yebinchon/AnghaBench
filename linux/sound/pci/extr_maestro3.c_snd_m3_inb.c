
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_m3 {scalar_t__ iobase; } ;


 int inb (scalar_t__) ;

__attribute__((used)) static inline u8 snd_m3_inb(struct snd_m3 *chip, unsigned long reg)
{
 return inb(chip->iobase + reg);
}
