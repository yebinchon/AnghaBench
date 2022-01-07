
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {unsigned short* regs; TYPE_2__* bus; int reg_accessed; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {unsigned short (* read ) (struct snd_ac97*,unsigned short) ;} ;


 unsigned short stub1 (struct snd_ac97*,unsigned short) ;
 int test_bit (unsigned short,int ) ;

__attribute__((used)) static inline unsigned short snd_ac97_read_cache(struct snd_ac97 *ac97, unsigned short reg)
{
 if (! test_bit(reg, ac97->reg_accessed)) {
  ac97->regs[reg] = ac97->bus->ops->read(ac97, reg);

 }
 return ac97->regs[reg];
}
