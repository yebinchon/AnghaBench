
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ const TCPOPT_NOP ;

__attribute__((used)) static unsigned int optlen(const u8 *opt, unsigned int offset)
{

 if (opt[offset] <= TCPOPT_NOP || opt[offset + 1] == 0)
  return 1;
 else
  return opt[offset + 1];
}
