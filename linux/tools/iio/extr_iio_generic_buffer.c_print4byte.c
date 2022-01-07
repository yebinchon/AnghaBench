
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iio_channel_info {int shift; int mask; int bits_used; float offset; float scale; scalar_t__ is_signed; scalar_t__ be; } ;
typedef int int32_t ;


 int be32toh (int) ;
 int le32toh (int) ;
 int printf (char*,float) ;

void print4byte(uint32_t input, struct iio_channel_info *info)
{

 if (info->be)
  input = be32toh(input);
 else
  input = le32toh(input);





 input >>= info->shift;
 input &= info->mask;
 if (info->is_signed) {
  int32_t val = (int32_t)(input << (32 - info->bits_used)) >>
         (32 - info->bits_used);
  printf("%05f ", ((float)val + info->offset) * info->scale);
 } else {
  printf("%05f ", ((float)input + info->offset) * info->scale);
 }
}
