
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct sctp_endpoint {TYPE_1__ base; } ;


 int refcount_inc (int *) ;

void sctp_endpoint_hold(struct sctp_endpoint *ep)
{
 refcount_inc(&ep->base.refcnt);
}
