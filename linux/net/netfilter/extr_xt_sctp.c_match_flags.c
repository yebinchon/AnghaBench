
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct xt_sctp_flag_info {scalar_t__ chunktype; scalar_t__ flag_mask; scalar_t__ flag; } ;



__attribute__((used)) static bool
match_flags(const struct xt_sctp_flag_info *flag_info,
     const int flag_count,
     u_int8_t chunktype,
     u_int8_t chunkflags)
{
 int i;

 for (i = 0; i < flag_count; i++)
  if (flag_info[i].chunktype == chunktype)
   return (chunkflags & flag_info[i].flag_mask) == flag_info[i].flag;

 return 1;
}
