
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool tcf_mirred_can_reinsert(int action)
{
 switch (action) {
 case 130:
 case 129:
 case 131:
 case 128:
  return 1;
 }
 return 0;
}
