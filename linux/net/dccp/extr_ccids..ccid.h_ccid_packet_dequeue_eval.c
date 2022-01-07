
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCID_PACKET_DELAY ;
 int const CCID_PACKET_DELAY_MAX ;
 int CCID_PACKET_ERR ;
 int CCID_PACKET_SEND_AT_ONCE ;

__attribute__((used)) static inline int ccid_packet_dequeue_eval(const int return_code)
{
 if (return_code < 0)
  return CCID_PACKET_ERR;
 if (return_code == 0)
  return CCID_PACKET_SEND_AT_ONCE;
 if (return_code <= CCID_PACKET_DELAY_MAX)
  return CCID_PACKET_DELAY;
 return return_code;
}
