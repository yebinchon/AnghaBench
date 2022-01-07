
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *dbg_gtype(int type)
{
 switch (type) {
 case 128:
  return "no node group";
 case 130:
  return "in node group";
 case 129:
  return "last of node group";
 default:
  return "unknown";
 }
}
