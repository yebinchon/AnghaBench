
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ after (scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool tcp_in_window(u32 seq, u32 end_seq, u32 s_win, u32 e_win)
{
 if (seq == s_win)
  return 1;
 if (after(end_seq, s_win) && before(seq, e_win))
  return 1;
 return seq == e_win && seq == end_seq;
}
