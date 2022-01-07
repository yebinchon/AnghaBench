
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dccp_ackvec {int av_buf_head; int av_buf_tail; int av_overflow; } ;


 int DCCPAV_MAX_ACKVEC_LEN ;
 int __ackvec_idx_sub (int ,int ) ;
 scalar_t__ unlikely (int ) ;

u16 dccp_ackvec_buflen(const struct dccp_ackvec *av)
{
 if (unlikely(av->av_overflow))
  return DCCPAV_MAX_ACKVEC_LEN;
 return __ackvec_idx_sub(av->av_buf_tail, av->av_buf_head);
}
