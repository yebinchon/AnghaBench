
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_tdm_ch_fixup(unsigned int channels)
{
 if (channels > 4)
  return 8;
 else if (channels > 2)
  return 4;
 else
  return 2;
}
