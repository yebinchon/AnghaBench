
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *state2str(unsigned state)
{
 switch(state) {
 case 128:
  return "UN";
 case 129:
  return "SH";
 case 131:
  return "DF";
 case 130:
  return "EX";
 }
 return "??";
}
