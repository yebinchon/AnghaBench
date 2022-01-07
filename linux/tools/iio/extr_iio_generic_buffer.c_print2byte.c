
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iio_channel_info {int shift; int mask; int bits_used; float offset; float scale; scalar_t__ is_signed; scalar_t__ be; } ;
typedef int int16_t ;


 int be16toh (int) ;
 int le16toh (int) ;
 int printf (char*,float) ;

void print2byte(uint16_t input, struct iio_channel_info *info)
{

 if (info->be)
  input = be16toh(input);
 else
  input = le16toh(input);





 input >>= info->shift;
 input &= info->mask;
 if (info->is_signed) {
  int16_t val = (int16_t)(input << (16 - info->bits_used)) >>
         (16 - info->bits_used);
  printf("%05f ", ((float)val + info->offset) * info->scale);
 } else {
  printf("%05f ", ((float)input + info->offset) * info->scale);
 }
}
