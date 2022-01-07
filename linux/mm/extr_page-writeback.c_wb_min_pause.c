
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int dirty_ratelimit; int avg_write_bandwidth; } ;


 int DIRTY_POLL_THRESH ;
 int HZ ;
 long ilog2 (int ) ;
 long max (int,int) ;
 long min (long,int) ;
 unsigned long roundup_pow_of_two (int) ;

__attribute__((used)) static long wb_min_pause(struct bdi_writeback *wb,
    long max_pause,
    unsigned long task_ratelimit,
    unsigned long dirty_ratelimit,
    int *nr_dirtied_pause)
{
 long hi = ilog2(wb->avg_write_bandwidth);
 long lo = ilog2(wb->dirty_ratelimit);
 long t;
 long pause;
 int pages;


 t = max(1, HZ / 100);







 if (hi > lo)
  t += (hi - lo) * (10 * HZ) / 1024;
 t = min(t, 1 + max_pause / 2);
 pages = dirty_ratelimit * t / roundup_pow_of_two(HZ);
 if (pages < DIRTY_POLL_THRESH) {
  t = max_pause;
  pages = dirty_ratelimit * t / roundup_pow_of_two(HZ);
  if (pages > DIRTY_POLL_THRESH) {
   pages = DIRTY_POLL_THRESH;
   t = HZ * DIRTY_POLL_THRESH / dirty_ratelimit;
  }
 }

 pause = HZ * pages / (task_ratelimit + 1);
 if (pause > max_pause) {
  t = max_pause;
  pages = task_ratelimit * t / roundup_pow_of_two(HZ);
 }

 *nr_dirtied_pause = pages;



 return pages >= DIRTY_POLL_THRESH ? 1 + t / 2 : t;
}
