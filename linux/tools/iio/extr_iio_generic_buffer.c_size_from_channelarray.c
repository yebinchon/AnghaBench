
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel_info {int bytes; int location; } ;



int size_from_channelarray(struct iio_channel_info *channels, int num_channels)
{
 int bytes = 0;
 int i = 0;

 while (i < num_channels) {
  if (bytes % channels[i].bytes == 0)
   channels[i].location = bytes;
  else
   channels[i].location = bytes - bytes % channels[i].bytes
            + channels[i].bytes;

  bytes = channels[i].location + channels[i].bytes;
  i++;
 }

 return bytes;
}
