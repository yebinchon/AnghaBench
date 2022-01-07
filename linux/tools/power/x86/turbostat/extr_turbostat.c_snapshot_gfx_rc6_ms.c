
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*) ;
 int fclose (int *) ;
 int * fopen_or_die (char*,char*) ;
 int fscanf (int *,char*,int *) ;
 int gfx_cur_rc6_ms ;

int snapshot_gfx_rc6_ms(void)
{
 FILE *fp;
 int retval;

 fp = fopen_or_die("/sys/class/drm/card0/power/rc6_residency_ms", "r");

 retval = fscanf(fp, "%lld", &gfx_cur_rc6_ms);
 if (retval != 1)
  err(1, "GFX rc6");

 fclose(fp);

 return 0;
}
