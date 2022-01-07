
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_opl4 {int reg_lock; scalar_t__ pcm_port; } ;


 int OPL4_MODE_BIT ;
 int OPL4_REG_MEMORY_ADDRESS_HIGH ;
 int OPL4_REG_MEMORY_ADDRESS_LOW ;
 int OPL4_REG_MEMORY_ADDRESS_MID ;
 int OPL4_REG_MEMORY_CONFIGURATION ;
 int OPL4_REG_MEMORY_DATA ;
 int insb (scalar_t__,char*,int) ;
 int outb (int ,scalar_t__) ;
 int snd_opl4_read (struct snd_opl4*,int ) ;
 int snd_opl4_wait (struct snd_opl4*) ;
 int snd_opl4_write (struct snd_opl4*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_opl4_read_memory(struct snd_opl4 *opl4, char *buf, int offset, int size)
{
 unsigned long flags;
 u8 memcfg;

 spin_lock_irqsave(&opl4->reg_lock, flags);

 memcfg = snd_opl4_read(opl4, OPL4_REG_MEMORY_CONFIGURATION);
 snd_opl4_write(opl4, OPL4_REG_MEMORY_CONFIGURATION, memcfg | OPL4_MODE_BIT);

 snd_opl4_write(opl4, OPL4_REG_MEMORY_ADDRESS_HIGH, offset >> 16);
 snd_opl4_write(opl4, OPL4_REG_MEMORY_ADDRESS_MID, offset >> 8);
 snd_opl4_write(opl4, OPL4_REG_MEMORY_ADDRESS_LOW, offset);

 snd_opl4_wait(opl4);
 outb(OPL4_REG_MEMORY_DATA, opl4->pcm_port);
 snd_opl4_wait(opl4);
 insb(opl4->pcm_port + 1, buf, size);

 snd_opl4_write(opl4, OPL4_REG_MEMORY_CONFIGURATION, memcfg);

 spin_unlock_irqrestore(&opl4->reg_lock, flags);
}
