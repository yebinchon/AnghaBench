
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel8x0 {unsigned int codec_ready_bits; } ;


 int GLOB_STA ;
 int ICHREG (int ) ;
 unsigned int ICH_GSCI ;
 unsigned int ICH_RCS ;
 int iagetword (struct intel8x0*,unsigned int) ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 scalar_t__ snd_intel8x0_codec_semaphore (struct intel8x0*,unsigned int) ;

__attribute__((used)) static void snd_intel8x0_codec_read_test(struct intel8x0 *chip,
      unsigned int codec)
{
 unsigned int tmp;

 if (snd_intel8x0_codec_semaphore(chip, codec) >= 0) {
  iagetword(chip, codec * 0x80);
  if ((tmp = igetdword(chip, ICHREG(GLOB_STA))) & ICH_RCS) {

   iputdword(chip, ICHREG(GLOB_STA), tmp &
      ~(chip->codec_ready_bits | ICH_GSCI));
  }
 }
}
