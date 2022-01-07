
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pie_params {int alpha; int beta; int limit; int ecn; int bytemode; int target; int tupdate; } ;


 int NSEC_PER_MSEC ;
 int PSCHED_NS2TICKS (int) ;
 int USEC_PER_MSEC ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static void pie_params_init(struct pie_params *params)
{
 params->alpha = 2;
 params->beta = 20;
 params->tupdate = usecs_to_jiffies(15 * USEC_PER_MSEC);
 params->limit = 1000;
 params->target = PSCHED_NS2TICKS(15 * NSEC_PER_MSEC);
 params->ecn = 0;
 params->bytemode = 0;
}
