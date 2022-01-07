
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iio_channel_info {int bytes; int location; } ;


 int print1byte (int ,struct iio_channel_info*) ;
 int print2byte (int ,struct iio_channel_info*) ;
 int print4byte (int ,struct iio_channel_info*) ;
 int print8byte (int ,struct iio_channel_info*) ;
 int printf (char*) ;

void process_scan(char *data,
    struct iio_channel_info *channels,
    int num_channels)
{
 int k;

 for (k = 0; k < num_channels; k++)
  switch (channels[k].bytes) {

  case 1:
   print1byte(*(uint8_t *)(data + channels[k].location),
       &channels[k]);
   break;
  case 2:
   print2byte(*(uint16_t *)(data + channels[k].location),
       &channels[k]);
   break;
  case 4:
   print4byte(*(uint32_t *)(data + channels[k].location),
       &channels[k]);
   break;
  case 8:
   print8byte(*(uint64_t *)(data + channels[k].location),
       &channels[k]);
   break;
  default:
   break;
  }
 printf("\n");
}
