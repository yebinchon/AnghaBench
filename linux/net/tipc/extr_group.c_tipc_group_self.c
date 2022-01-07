
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_name_seq {int upper; int lower; int type; } ;
struct tipc_group {int scope; int instance; int type; } ;



void tipc_group_self(struct tipc_group *grp, struct tipc_name_seq *seq,
       int *scope)
{
 seq->type = grp->type;
 seq->lower = grp->instance;
 seq->upper = grp->instance;
 *scope = grp->scope;
}
