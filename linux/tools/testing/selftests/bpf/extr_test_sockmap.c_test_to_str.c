
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *test_to_str(int test)
{
 switch (test) {
 case 129:
  return "sendmsg";
 case 128:
  return "sendpage";
 }
 return "unknown";
}
