
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long dirty_freerun_ceiling(unsigned long thresh,
        unsigned long bg_thresh)
{
 return (thresh + bg_thresh) / 2;
}
