
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTW_ACTIONRETVAL ;
 int FTW_PHYS ;
 int errno ;
 int has_perf_query_support () ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_start_array (int ) ;
 int nftw (char*,int ,int,int) ;
 int p_err (char*,int ) ;
 int show_proc ;
 int strerror (int ) ;

__attribute__((used)) static int do_show(int argc, char **argv)
{
 int flags = FTW_ACTIONRETVAL | FTW_PHYS;
 int err = 0, nopenfd = 16;

 if (!has_perf_query_support())
  return -1;

 if (json_output)
  jsonw_start_array(json_wtr);
 if (nftw("/proc", show_proc, nopenfd, flags) == -1) {
  p_err("%s", strerror(errno));
  err = -1;
 }
 if (json_output)
  jsonw_end_array(json_wtr);

 return err;
}
