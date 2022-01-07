
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iio_channel_info {int shift; int mask; int bits_used; float offset; float scale; scalar_t__ is_signed; } ;
typedef int int8_t ;


 int printf (char*,float) ;

void print1byte(uint8_t input, struct iio_channel_info *info)
{




 input >>= info->shift;
 input &= info->mask;
 if (info->is_signed) {
  int8_t val = (int8_t)(input << (8 - info->bits_used)) >>
        (8 - info->bits_used);
  printf("%05f ", ((float)val + info->offset) * info->scale);
 } else {
  printf("%05f ", ((float)input + info->offset) * info->scale);
 }
}
