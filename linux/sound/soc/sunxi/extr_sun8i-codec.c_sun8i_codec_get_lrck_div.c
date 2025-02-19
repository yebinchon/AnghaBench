
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ilog2 (unsigned int) ;

__attribute__((used)) static int sun8i_codec_get_lrck_div(unsigned int channels,
        unsigned int word_size)
{
 unsigned int div = word_size * channels;

 if (div < 16 || div > 256)
  return -EINVAL;

 return ilog2(div) - 4;
}
