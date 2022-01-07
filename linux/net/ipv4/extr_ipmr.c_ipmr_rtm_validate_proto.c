
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool ipmr_rtm_validate_proto(unsigned char rtm_protocol)
{
 switch (rtm_protocol) {
 case 128:
 case 129:
  return 1;
 }
 return 0;
}
