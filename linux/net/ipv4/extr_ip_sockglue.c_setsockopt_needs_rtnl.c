
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool setsockopt_needs_rtnl(int optname)
{
 switch (optname) {
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 129:
 case 133:
 case 132:
 case 131:
 case 130:
 case 128:
  return 1;
 }
 return 0;
}
