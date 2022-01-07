
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dql {int slack_start_time; int lowest_slack; scalar_t__ prev_ovlimit; scalar_t__ prev_last_obj_cnt; scalar_t__ prev_num_queued; scalar_t__ last_obj_cnt; scalar_t__ num_completed; scalar_t__ num_queued; scalar_t__ limit; } ;


 int UINT_MAX ;
 int jiffies ;

void dql_reset(struct dql *dql)
{

 dql->limit = 0;
 dql->num_queued = 0;
 dql->num_completed = 0;
 dql->last_obj_cnt = 0;
 dql->prev_num_queued = 0;
 dql->prev_last_obj_cnt = 0;
 dql->prev_ovlimit = 0;
 dql->lowest_slack = UINT_MAX;
 dql->slack_start_time = jiffies;
}
