
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrp_applicant {int periodic_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mrp_periodic_time ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void mrp_periodic_timer_arm(struct mrp_applicant *app)
{
 mod_timer(&app->periodic_timer,
    jiffies + msecs_to_jiffies(mrp_periodic_time));
}
