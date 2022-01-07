
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int ktime_t ;


 int NSEC_PER_MSEC ;
 int PAGE_SIZE ;
 unsigned int ktime_divns (int ,int) ;
 int ktime_sub (int ,int ) ;
 int pr_info (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

void swsusp_show_speed(ktime_t start, ktime_t stop,
        unsigned nr_pages, char *msg)
{
 ktime_t diff;
 u64 elapsed_centisecs64;
 unsigned int centisecs;
 unsigned int k;
 unsigned int kps;

 diff = ktime_sub(stop, start);
 elapsed_centisecs64 = ktime_divns(diff, 10*NSEC_PER_MSEC);
 centisecs = elapsed_centisecs64;
 if (centisecs == 0)
  centisecs = 1;
 k = nr_pages * (PAGE_SIZE / 1024);
 kps = (k * 100) / centisecs;
 pr_info("%s %u kbytes in %u.%02u seconds (%u.%02u MB/s)\n",
  msg, k, centisecs / 100, centisecs % 100, kps / 1000,
  (kps % 1000) / 10);
}
