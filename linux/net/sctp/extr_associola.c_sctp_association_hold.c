
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct sctp_association {TYPE_1__ base; } ;


 int refcount_inc (int *) ;

void sctp_association_hold(struct sctp_association *asoc)
{
 refcount_inc(&asoc->base.refcnt);
}
