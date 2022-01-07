
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*) ;
 int fflush (int *) ;
 int * fopen_or_die (char*,char*) ;
 int fscanf (int *,char*,int *) ;
 int gfx_cur_mhz ;
 int rewind (int *) ;

int snapshot_gfx_mhz(void)
{
 static FILE *fp;
 int retval;

 if (fp == ((void*)0))
  fp = fopen_or_die("/sys/class/graphics/fb0/device/drm/card0/gt_cur_freq_mhz", "r");
 else {
  rewind(fp);
  fflush(fp);
 }

 retval = fscanf(fp, "%d", &gfx_cur_mhz);
 if (retval != 1)
  err(1, "GFX MHz");

 return 0;
}
