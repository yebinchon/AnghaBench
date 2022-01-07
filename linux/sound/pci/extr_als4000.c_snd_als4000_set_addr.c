
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int ALS4K_GCRA8_LEGACY_CFG1 ;
 int ALS4K_GCRA9_LEGACY_CFG2 ;
 int snd_als4k_gcr_write_addr (unsigned long,int ,unsigned int) ;

__attribute__((used)) static void snd_als4000_set_addr(unsigned long iobase,
     unsigned int sb_io,
     unsigned int mpu_io,
     unsigned int opl_io,
     unsigned int game_io)
{
 u32 cfg1 = 0;
 u32 cfg2 = 0;

 if (mpu_io > 0)
  cfg2 |= (mpu_io | 1) << 16;
 if (sb_io > 0)
  cfg2 |= (sb_io | 1);
 if (game_io > 0)
  cfg1 |= (game_io | 1) << 16;
 if (opl_io > 0)
  cfg1 |= (opl_io | 1);
 snd_als4k_gcr_write_addr(iobase, ALS4K_GCRA8_LEGACY_CFG1, cfg1);
 snd_als4k_gcr_write_addr(iobase, ALS4K_GCRA9_LEGACY_CFG2, cfg2);
}
