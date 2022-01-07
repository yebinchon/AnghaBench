
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct choke_sched_data {int flags; } ;


 int TC_RED_ECN ;

__attribute__((used)) static int use_ecn(const struct choke_sched_data *q)
{
 return q->flags & TC_RED_ECN;
}
