
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {scalar_t__ dst_pending_confirm; int * dst; } ;


 int dst_release (int *) ;

void sctp_transport_dst_release(struct sctp_transport *t)
{
 dst_release(t->dst);
 t->dst = ((void*)0);
 t->dst_pending_confirm = 0;
}
