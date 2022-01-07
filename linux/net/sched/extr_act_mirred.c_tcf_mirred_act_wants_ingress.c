
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;





__attribute__((used)) static bool tcf_mirred_act_wants_ingress(int action)
{
 switch (action) {
 case 130:
 case 131:
  return 0;
 case 128:
 case 129:
  return 1;
 default:
  BUG();
 }
}
