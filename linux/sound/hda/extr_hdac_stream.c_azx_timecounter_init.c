
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timecounter {scalar_t__ cycle_last; } ;
struct cyclecounter {int mult; scalar_t__ shift; int mask; int read; } ;
struct hdac_stream {struct cyclecounter cc; struct timecounter tc; } ;


 int CLOCKSOURCE_MASK (int) ;
 int azx_cc_read ;
 int timecounter_init (struct timecounter*,struct cyclecounter*,scalar_t__) ;

__attribute__((used)) static void azx_timecounter_init(struct hdac_stream *azx_dev,
     bool force, u64 last)
{
 struct timecounter *tc = &azx_dev->tc;
 struct cyclecounter *cc = &azx_dev->cc;
 u64 nsec;

 cc->read = azx_cc_read;
 cc->mask = CLOCKSOURCE_MASK(32);
 cc->mult = 125;
 cc->shift = 0;

 nsec = 0;
 timecounter_init(tc, cc, nsec);
 if (force) {




  tc->cycle_last = last;
 }
}
