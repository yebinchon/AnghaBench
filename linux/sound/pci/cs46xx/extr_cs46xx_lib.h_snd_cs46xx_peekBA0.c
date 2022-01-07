
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ remap_addr; } ;
struct TYPE_5__ {TYPE_1__ ba0; } ;
struct TYPE_6__ {TYPE_2__ name; } ;
struct snd_cs46xx {TYPE_3__ region; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int snd_cs46xx_peekBA0(struct snd_cs46xx *chip, unsigned long offset)
{
 return readl(chip->region.name.ba0.remap_addr + offset);
}
