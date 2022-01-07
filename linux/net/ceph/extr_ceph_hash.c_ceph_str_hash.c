
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ceph_str_hash_linux (char const*,unsigned int) ;
 unsigned int ceph_str_hash_rjenkins (char const*,unsigned int) ;

unsigned int ceph_str_hash(int type, const char *s, unsigned int len)
{
 switch (type) {
 case 129:
  return ceph_str_hash_linux(s, len);
 case 128:
  return ceph_str_hash_rjenkins(s, len);
 default:
  return -1;
 }
}
