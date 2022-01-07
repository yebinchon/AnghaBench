
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opti9xx {int mc_base; int mc_base_size; int mc_indir_index; int password; int pwd_reg; int * res_mc_base; int * res_mc_indir; int lock; } ;


 int EBUSY ;
 int ENODEV ;
 int OPTi9XX_MC_REG (int) ;
 unsigned char inb (int) ;
 int outb (int,int) ;
 int release_and_free_resource (int *) ;
 void* request_region (int,int,char*) ;
 int snd_opti9xx_read (struct snd_opti9xx*,int) ;
 int snd_opti9xx_write (struct snd_opti9xx*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_opti9xx_read_check(struct snd_opti9xx *chip)
{
 unsigned char value;




 chip->res_mc_base = request_region(chip->mc_base, chip->mc_base_size,
        "OPTi9xx MC");
 if (chip->res_mc_base == ((void*)0))
  return -EBUSY;

 value = snd_opti9xx_read(chip, OPTi9XX_MC_REG(1));
 if (value != 0xff && value != inb(chip->mc_base + OPTi9XX_MC_REG(1)))
  if (value == snd_opti9xx_read(chip, OPTi9XX_MC_REG(1)))
   return 0;
 release_and_free_resource(chip->res_mc_base);
 chip->res_mc_base = ((void*)0);

 return -ENODEV;
}
