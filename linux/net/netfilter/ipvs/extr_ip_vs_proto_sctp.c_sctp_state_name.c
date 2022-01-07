
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_VS_SCTP_S_LAST ;
 char const** sctp_state_name_table ;

__attribute__((used)) static const char *sctp_state_name(int state)
{
 if (state >= IP_VS_SCTP_S_LAST)
  return "ERR!";
 if (sctp_state_name_table[state])
  return sctp_state_name_table[state];
 return "?";
}
