
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_hsw {struct sst_dsp* dsp; } ;
struct sst_dsp {int dummy; } ;



struct sst_dsp *sst_hsw_get_dsp(struct sst_hsw *hsw)
{
 return hsw->dsp;
}
