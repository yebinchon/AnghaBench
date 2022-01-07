
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_VS_TCP_S_LAST ;
 char const** tcp_state_name_table ;

__attribute__((used)) static const char * tcp_state_name(int state)
{
 if (state >= IP_VS_TCP_S_LAST)
  return "ERR!";
 return tcp_state_name_table[state] ? tcp_state_name_table[state] : "?";
}
