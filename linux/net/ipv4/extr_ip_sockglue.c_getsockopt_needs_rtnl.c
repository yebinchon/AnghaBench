
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool getsockopt_needs_rtnl(int optname)
{
 switch (optname) {
 case 129:
 case 128:
  return 1;
 }
 return 0;
}
