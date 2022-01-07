
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_ct_tcp {TYPE_1__* seen; int state; } ;
struct TYPE_2__ {scalar_t__ td_maxwin; } ;


 int TCP_CONNTRACK_ESTABLISHED ;

__attribute__((used)) static void flow_offload_fixup_tcp(struct ip_ct_tcp *tcp)
{
 tcp->state = TCP_CONNTRACK_ESTABLISHED;
 tcp->seen[0].td_maxwin = 0;
 tcp->seen[1].td_maxwin = 0;
}
