
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct dccp_ackvec {int av_buf_head; int av_buf_tail; scalar_t__* av_buf; } ;
typedef scalar_t__ s64 ;
typedef enum dccp_ackvec_states { ____Placeholder_dccp_ackvec_states } dccp_ackvec_states ;


 int BUG_ON (int) ;
 scalar_t__ DCCPAV_NOT_RECEIVED ;
 int __ackvec_idx_add (int,int) ;
 int dccp_ackvec_is_empty (struct dccp_ackvec*) ;
 scalar_t__ dccp_ackvec_runlen (scalar_t__*) ;
 int dccp_pr_debug (char*,unsigned long long,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dccp_ackvec_update_old(struct dccp_ackvec *av, s64 distance,
       u64 seqno, enum dccp_ackvec_states state)
{
 u16 ptr = av->av_buf_head;

 BUG_ON(distance > 0);
 if (unlikely(dccp_ackvec_is_empty(av)))
  return;

 do {
  u8 runlen = dccp_ackvec_runlen(av->av_buf + ptr);

  if (distance + runlen >= 0) {
   if (av->av_buf[ptr] == DCCPAV_NOT_RECEIVED)
    av->av_buf[ptr] = state;
   else
    dccp_pr_debug("Not changing %llu state to %u\n",
           (unsigned long long)seqno, state);
   break;
  }

  distance += runlen + 1;
  ptr = __ackvec_idx_add(ptr, 1);

 } while (ptr != av->av_buf_tail);
}
