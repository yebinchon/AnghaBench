
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int flow_offload_fixup_ct_state (struct nf_conn*) ;
 int flow_offload_fixup_ct_timeout (struct nf_conn*) ;

__attribute__((used)) static void flow_offload_fixup_ct(struct nf_conn *ct)
{
 flow_offload_fixup_ct_state(ct);
 flow_offload_fixup_ct_timeout(ct);
}
