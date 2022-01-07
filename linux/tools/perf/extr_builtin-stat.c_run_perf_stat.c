
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __run_perf_stat (int,char const**,int) ;
 scalar_t__ post_cmd ;
 scalar_t__ pre_cmd ;
 int sync () ;
 scalar_t__ sync_run ;
 int system (scalar_t__) ;

__attribute__((used)) static int run_perf_stat(int argc, const char **argv, int run_idx)
{
 int ret;

 if (pre_cmd) {
  ret = system(pre_cmd);
  if (ret)
   return ret;
 }

 if (sync_run)
  sync();

 ret = __run_perf_stat(argc, argv, run_idx);
 if (ret)
  return ret;

 if (post_cmd) {
  ret = system(post_cmd);
  if (ret)
   return ret;
 }

 return ret;
}
