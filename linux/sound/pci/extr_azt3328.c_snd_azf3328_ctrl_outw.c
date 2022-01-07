
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_azf3328 {unsigned int ctrl_io; } ;


 int outw (int ,unsigned int) ;

__attribute__((used)) static inline void
snd_azf3328_ctrl_outw(const struct snd_azf3328 *chip, unsigned reg, u16 value)
{
 outw(value, chip->ctrl_io + reg);
}
