
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ratio_2_sysfs_khz(int ratio)
{
 int bclk_khz = 100 * 1000;

 return ratio * bclk_khz;
}
