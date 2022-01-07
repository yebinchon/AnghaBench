
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro {int * res_mc_base; scalar_t__ mc_base; int mc_base_size; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ OPTi9XX_MC_REG (int) ;
 unsigned char inb (scalar_t__) ;
 int release_and_free_resource (int *) ;
 int * request_region (scalar_t__,int ,char*) ;
 unsigned char snd_miro_read (struct snd_miro*,scalar_t__) ;

__attribute__((used)) static int snd_miro_opti_check(struct snd_miro *chip)
{
 unsigned char value;

 chip->res_mc_base = request_region(chip->mc_base, chip->mc_base_size,
        "OPTi9xx MC");
 if (chip->res_mc_base == ((void*)0))
  return -ENOMEM;

 value = snd_miro_read(chip, OPTi9XX_MC_REG(1));
 if (value != 0xff && value != inb(chip->mc_base + OPTi9XX_MC_REG(1)))
  if (value == snd_miro_read(chip, OPTi9XX_MC_REG(1)))
   return 0;

 release_and_free_resource(chip->res_mc_base);
 chip->res_mc_base = ((void*)0);

 return -ENODEV;
}
