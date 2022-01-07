
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dql {unsigned int slack_hold_time; scalar_t__ min_limit; int max_limit; } ;


 int DQL_MAX_LIMIT ;
 int dql_reset (struct dql*) ;

void dql_init(struct dql *dql, unsigned int hold_time)
{
 dql->max_limit = DQL_MAX_LIMIT;
 dql->min_limit = 0;
 dql->slack_hold_time = hold_time;
 dql_reset(dql);
}
