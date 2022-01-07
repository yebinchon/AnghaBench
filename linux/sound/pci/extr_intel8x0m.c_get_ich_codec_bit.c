
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel8x0m {int dummy; } ;





 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static unsigned int get_ich_codec_bit(struct intel8x0m *chip, unsigned int codec)
{
 static unsigned int codec_bit[3] = {
  130, 129, 128
 };
 if (snd_BUG_ON(codec >= 3))
  return 130;
 return codec_bit[codec];
}
