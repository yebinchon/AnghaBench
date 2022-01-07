
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *crush_hash_name(int type)
{
 switch (type) {
 case 128:
  return "rjenkins1";
 default:
  return "unknown";
 }
}
