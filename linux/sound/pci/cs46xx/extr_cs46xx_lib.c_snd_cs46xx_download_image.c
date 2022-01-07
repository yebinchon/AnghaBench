
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {struct ba1_struct* ba1; } ;
struct ba1_struct {TYPE_1__* memory; int * map; } ;
struct TYPE_2__ {int size; int offset; } ;


 int BA1_MEMORY_COUNT ;
 int snd_cs46xx_download (struct snd_cs46xx*,int *,int ,int) ;

int snd_cs46xx_download_image(struct snd_cs46xx *chip)
{
 int idx, err;
 unsigned int offset = 0;
 struct ba1_struct *ba1 = chip->ba1;

 for (idx = 0; idx < BA1_MEMORY_COUNT; idx++) {
  err = snd_cs46xx_download(chip,
       &ba1->map[offset],
       ba1->memory[idx].offset,
       ba1->memory[idx].size);
  if (err < 0)
   return err;
  offset += ba1->memory[idx].size >> 2;
 }
 return 0;
}
