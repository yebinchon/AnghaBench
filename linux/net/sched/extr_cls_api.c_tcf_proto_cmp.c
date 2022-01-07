
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {scalar_t__ prio; scalar_t__ protocol; TYPE_1__* chain; } ;
struct TYPE_2__ {scalar_t__ index; } ;



__attribute__((used)) static bool tcf_proto_cmp(const struct tcf_proto *tp1,
     const struct tcf_proto *tp2)
{
 return tp1->chain->index == tp2->chain->index &&
        tp1->prio == tp2->prio &&
        tp1->protocol == tp2->protocol;
}
