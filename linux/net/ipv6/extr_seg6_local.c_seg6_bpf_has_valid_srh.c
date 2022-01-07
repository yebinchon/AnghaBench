
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct seg6_bpf_srh_state {int valid; int hdrlen; struct ipv6_sr_hdr* srh; } ;
struct ipv6_sr_hdr {int hdrlen; } ;


 int seg6_bpf_srh_states ;
 int seg6_validate_srh (struct ipv6_sr_hdr*,int) ;
 struct seg6_bpf_srh_state* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

bool seg6_bpf_has_valid_srh(struct sk_buff *skb)
{
 struct seg6_bpf_srh_state *srh_state =
  this_cpu_ptr(&seg6_bpf_srh_states);
 struct ipv6_sr_hdr *srh = srh_state->srh;

 if (unlikely(srh == ((void*)0)))
  return 0;

 if (unlikely(!srh_state->valid)) {
  if ((srh_state->hdrlen & 7) != 0)
   return 0;

  srh->hdrlen = (u8)(srh_state->hdrlen >> 3);
  if (!seg6_validate_srh(srh, (srh->hdrlen + 1) << 3))
   return 0;

  srh_state->valid = 1;
 }

 return 1;
}
