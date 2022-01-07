
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {unsigned long dirty_limit; } ;


 int global_dirty_limits (unsigned long*,unsigned long*) ;
 struct wb_domain global_wb_domain ;
 int num_online_cpus () ;
 int ratelimit_pages ;

void writeback_set_ratelimit(void)
{
 struct wb_domain *dom = &global_wb_domain;
 unsigned long background_thresh;
 unsigned long dirty_thresh;

 global_dirty_limits(&background_thresh, &dirty_thresh);
 dom->dirty_limit = dirty_thresh;
 ratelimit_pages = dirty_thresh / (num_online_cpus() * 32);
 if (ratelimit_pages < 16)
  ratelimit_pages = 16;
}
