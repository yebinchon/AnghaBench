
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq {TYPE_1__* curr; } ;
struct TYPE_2__ {int se; } ;


 int cfs_rq_of (int *) ;
 int update_curr (int ) ;

__attribute__((used)) static void update_curr_fair(struct rq *rq)
{
 update_curr(cfs_rq_of(&rq->curr->se));
}
