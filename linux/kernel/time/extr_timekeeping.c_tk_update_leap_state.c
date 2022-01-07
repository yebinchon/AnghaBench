
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timekeeper {scalar_t__ next_leap_ktime; int offs_real; } ;


 scalar_t__ KTIME_MAX ;
 scalar_t__ ktime_sub (scalar_t__,int ) ;
 scalar_t__ ntp_get_next_leap () ;

__attribute__((used)) static inline void tk_update_leap_state(struct timekeeper *tk)
{
 tk->next_leap_ktime = ntp_get_next_leap();
 if (tk->next_leap_ktime != KTIME_MAX)

  tk->next_leap_ktime = ktime_sub(tk->next_leap_ktime, tk->offs_real);
}
