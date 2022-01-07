
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_power_of_2 (unsigned long) ;
 int page_size ;
 unsigned long rounddown_pow_of_two (unsigned long) ;
 scalar_t__ sysctl__read_int (char*,int*) ;

unsigned long perf_event_mlock_kb_in_pages(void)
{
 unsigned long pages;
 int max;

 if (sysctl__read_int("kernel/perf_event_mlock_kb", &max) < 0) {





  max = 512;
 } else {
  max -= (page_size / 1024);
 }

 pages = (max * 1024) / page_size;
 if (!is_power_of_2(pages))
  pages = rounddown_pow_of_two(pages);

 return pages;
}
