
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct timekeeper {scalar_t__ offs_real; int tai_offset; int offs_tai; struct timespec64 wall_to_monotonic; } ;


 int WARN_ON_ONCE (int) ;
 int ktime_add (scalar_t__,int ) ;
 int ktime_set (int ,int ) ;
 int set_normalized_timespec64 (struct timespec64*,int ,int ) ;
 scalar_t__ timespec64_to_ktime (struct timespec64) ;

__attribute__((used)) static void tk_set_wall_to_mono(struct timekeeper *tk, struct timespec64 wtm)
{
 struct timespec64 tmp;





 set_normalized_timespec64(&tmp, -tk->wall_to_monotonic.tv_sec,
     -tk->wall_to_monotonic.tv_nsec);
 WARN_ON_ONCE(tk->offs_real != timespec64_to_ktime(tmp));
 tk->wall_to_monotonic = wtm;
 set_normalized_timespec64(&tmp, -wtm.tv_sec, -wtm.tv_nsec);
 tk->offs_real = timespec64_to_ktime(tmp);
 tk->offs_tai = ktime_add(tk->offs_real, ktime_set(tk->tai_offset, 0));
}
