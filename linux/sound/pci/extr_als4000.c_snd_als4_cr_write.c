
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_sb {int dummy; } ;
typedef enum als4k_cr_t { ____Placeholder_als4k_cr_t } als4k_cr_t ;


 int snd_sbmixer_write (struct snd_sb*,int,int ) ;

__attribute__((used)) static inline void snd_als4_cr_write(struct snd_sb *chip,
     enum als4k_cr_t reg,
     u8 data)
{



 snd_sbmixer_write(chip, reg | 0xc0, data);
}
