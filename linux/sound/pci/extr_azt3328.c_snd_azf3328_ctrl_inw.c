
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_azf3328 {unsigned int ctrl_io; } ;


 int inw (unsigned int) ;

__attribute__((used)) static inline u16
snd_azf3328_ctrl_inw(const struct snd_azf3328 *chip, unsigned reg)
{
 return inw(chip->ctrl_io + reg);
}
