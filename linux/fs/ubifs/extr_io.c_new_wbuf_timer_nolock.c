
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int timer; int jhead; scalar_t__ no_timer; } ;
struct ubifs_info {int dummy; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_REL ;
 unsigned long long NSEC_PER_MSEC ;
 unsigned long long ULONG_MAX ;
 int USEC_PER_SEC ;
 int dbg_io (char*,int ,int ,int ) ;
 int dbg_jhead (int ) ;
 int dirty_writeback_interval ;
 int div_u64 (scalar_t__,int ) ;
 int hrtimer_active (int *) ;
 int hrtimer_start_range_ns (int *,int ,unsigned long long,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int ms_to_ktime (int) ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static void new_wbuf_timer_nolock(struct ubifs_info *c, struct ubifs_wbuf *wbuf)
{
 ktime_t softlimit = ms_to_ktime(dirty_writeback_interval * 10);
 unsigned long long delta = dirty_writeback_interval;


 delta *= 10ULL * NSEC_PER_MSEC / 10ULL;

 ubifs_assert(c, !hrtimer_active(&wbuf->timer));
 ubifs_assert(c, delta <= ULONG_MAX);

 if (wbuf->no_timer)
  return;
 dbg_io("set timer for jhead %s, %llu-%llu millisecs",
        dbg_jhead(wbuf->jhead),
        div_u64(ktime_to_ns(softlimit), USEC_PER_SEC),
        div_u64(ktime_to_ns(softlimit) + delta, USEC_PER_SEC));
 hrtimer_start_range_ns(&wbuf->timer, softlimit, delta,
          HRTIMER_MODE_REL);
}
