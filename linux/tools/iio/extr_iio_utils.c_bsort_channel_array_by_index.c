
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel_info {scalar_t__ index; } ;



void bsort_channel_array_by_index(struct iio_channel_info *ci_array, int cnt)
{
 struct iio_channel_info temp;
 int x, y;

 for (x = 0; x < cnt; x++)
  for (y = 0; y < (cnt - 1); y++)
   if (ci_array[y].index > ci_array[y + 1].index) {
    temp = ci_array[y + 1];
    ci_array[y + 1] = ci_array[y];
    ci_array[y] = temp;
   }
}
