
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_VS_TCP_S_LAST ;
 int* tcp_state_active_table ;

__attribute__((used)) static bool tcp_state_active(int state)
{
 if (state >= IP_VS_TCP_S_LAST)
  return 0;
 return tcp_state_active_table[state];
}
