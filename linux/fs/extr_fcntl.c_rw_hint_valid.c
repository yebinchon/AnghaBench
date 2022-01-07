
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rw_hint { ____Placeholder_rw_hint } rw_hint ;
__attribute__((used)) static bool rw_hint_valid(enum rw_hint hint)
{
 switch (hint) {
 case 133:
 case 129:
 case 128:
 case 130:
 case 131:
 case 132:
  return 1;
 default:
  return 0;
 }
}
