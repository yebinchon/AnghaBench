
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcp; } ;
struct nf_conn {TYPE_1__ proto; } ;


 scalar_t__ IPPROTO_TCP ;
 int flow_offload_fixup_tcp (int *) ;
 scalar_t__ nf_ct_protonum (struct nf_conn*) ;

__attribute__((used)) static void flow_offload_fixup_ct_state(struct nf_conn *ct)
{
 if (nf_ct_protonum(ct) == IPPROTO_TCP)
  flow_offload_fixup_tcp(&ct->proto.tcp);
}
