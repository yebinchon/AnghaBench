
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec {scalar_t__ av_overflow; scalar_t__ av_buf_head; scalar_t__ av_buf_tail; } ;



__attribute__((used)) static inline bool dccp_ackvec_is_empty(const struct dccp_ackvec *av)
{
 return av->av_overflow == 0 && av->av_buf_head == av->av_buf_tail;
}
