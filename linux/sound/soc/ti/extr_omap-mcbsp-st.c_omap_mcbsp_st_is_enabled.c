
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {int enabled; } ;
struct omap_mcbsp {struct omap_mcbsp_st_data* st_data; } ;


 int ENODEV ;

__attribute__((used)) static int omap_mcbsp_st_is_enabled(struct omap_mcbsp *mcbsp)
{
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

 if (!st_data)
  return -ENODEV;

 return st_data->enabled;
}
