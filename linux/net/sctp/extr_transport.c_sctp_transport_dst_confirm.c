
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dst_pending_confirm; } ;



void sctp_transport_dst_confirm(struct sctp_transport *t)
{
 t->dst_pending_confirm = 1;
}
