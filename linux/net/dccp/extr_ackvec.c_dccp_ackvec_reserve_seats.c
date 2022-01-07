
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dccp_ackvec {scalar_t__ av_buf; int av_buf_head; } ;


 scalar_t__ DCCPAV_MAX_ACKVEC_LEN ;
 int DCCPAV_NOT_RECEIVED ;
 scalar_t__ __ackvec_idx_add (int ,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void dccp_ackvec_reserve_seats(struct dccp_ackvec *av, u16 num)
{
 u16 start = __ackvec_idx_add(av->av_buf_head, 1),
     len = DCCPAV_MAX_ACKVEC_LEN - start;


 if (num > len) {
  memset(av->av_buf + start, DCCPAV_NOT_RECEIVED, len);
  start = 0;
  num -= len;
 }
 if (num)
  memset(av->av_buf + start, DCCPAV_NOT_RECEIVED, num);
}
