
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0m {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ACC_SEMA ;
 int EBUSY ;
 int EIO ;
 int GLOB_STA ;
 int ICHREG (int ) ;
 int ICH_CAS ;
 int dev_err (int ,char*,int,unsigned int) ;
 unsigned int get_ich_codec_bit (struct intel8x0m*,unsigned int) ;
 int iagetword (struct intel8x0m*,int ) ;
 int igetbyte (struct intel8x0m*,int ) ;
 unsigned int igetdword (struct intel8x0m*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int snd_intel8x0m_codec_semaphore(struct intel8x0m *chip, unsigned int codec)
{
 int time;

 if (codec > 1)
  return -EIO;
 codec = get_ich_codec_bit(chip, codec);


 if ((igetdword(chip, ICHREG(GLOB_STA)) & codec) == 0)
  return -EIO;


 time = 100;
       do {
        if (!(igetbyte(chip, ICHREG(ACC_SEMA)) & ICH_CAS))
         return 0;
  udelay(10);
 } while (time--);




 dev_err(chip->card->dev,
  "codec_semaphore: semaphore is not ready [0x%x][0x%x]\n",
   igetbyte(chip, ICHREG(ACC_SEMA)), igetdword(chip, ICHREG(GLOB_STA)));
 iagetword(chip, 0);

 return -EBUSY;
}
