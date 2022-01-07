
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_DCCP ;
 int IPPROTO_TCP ;


__attribute__((used)) static int inet_diag_type2proto(int type)
{
 switch (type) {
 case 128:
  return IPPROTO_TCP;
 case 129:
  return IPPROTO_DCCP;
 default:
  return 0;
 }
}
