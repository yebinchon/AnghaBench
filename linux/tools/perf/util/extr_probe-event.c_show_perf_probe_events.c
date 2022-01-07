
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strfilter {int dummy; } ;
struct TYPE_2__ {scalar_t__ cache; } ;


 int __show_perf_probe_events (int,int,struct strfilter*) ;
 int close (int) ;
 int exit_probe_symbol_maps () ;
 int init_probe_symbol_maps (int) ;
 int probe_cache__show_all_caches (struct strfilter*) ;
 TYPE_1__ probe_conf ;
 int probe_file__open_both (int*,int*,int ) ;
 int setup_pager () ;

int show_perf_probe_events(struct strfilter *filter)
{
 int kp_fd, up_fd, ret;

 setup_pager();

 if (probe_conf.cache)
  return probe_cache__show_all_caches(filter);

 ret = init_probe_symbol_maps(0);
 if (ret < 0)
  return ret;

 ret = probe_file__open_both(&kp_fd, &up_fd, 0);
 if (ret < 0)
  return ret;

 if (kp_fd >= 0)
  ret = __show_perf_probe_events(kp_fd, 1, filter);
 if (up_fd >= 0 && ret >= 0)
  ret = __show_perf_probe_events(up_fd, 0, filter);
 if (kp_fd > 0)
  close(kp_fd);
 if (up_fd > 0)
  close(up_fd);
 exit_probe_symbol_maps();

 return ret;
}
