
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mrp_applicant {int join_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mrp_join_time ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int prandom_u32 () ;

__attribute__((used)) static void mrp_join_timer_arm(struct mrp_applicant *app)
{
 unsigned long delay;

 delay = (u64)msecs_to_jiffies(mrp_join_time) * prandom_u32() >> 32;
 mod_timer(&app->join_timer, jiffies + delay);
}
