
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int check_fcntl_cmd(unsigned cmd)
{
 switch (cmd) {
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  return 1;
 }
 return 0;
}
