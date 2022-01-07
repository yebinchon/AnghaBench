
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_str_hash_name(int type)
{
 switch (type) {
 case 129:
  return "linux";
 case 128:
  return "rjenkins";
 default:
  return "unknown";
 }
}
