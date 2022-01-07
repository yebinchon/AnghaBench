
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pie_vars {scalar_t__ accu_prob_overflows; int burst_time; scalar_t__ avg_dq_rate; scalar_t__ accu_prob; int dq_count; } ;


 int DQCOUNT_INVALID ;
 int NSEC_PER_MSEC ;
 int PSCHED_NS2TICKS (int) ;

__attribute__((used)) static void pie_vars_init(struct pie_vars *vars)
{
 vars->dq_count = DQCOUNT_INVALID;
 vars->accu_prob = 0;
 vars->avg_dq_rate = 0;

 vars->burst_time = PSCHED_NS2TICKS(150 * NSEC_PER_MSEC);
 vars->accu_prob_overflows = 0;
}
