
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int ceph_str_hash_linux(const char *str, unsigned int length)
{
 unsigned long hash = 0;
 unsigned char c;

 while (length--) {
  c = *str++;
  hash = (hash + (c << 4) + (c >> 4)) * 11;
 }
 return hash;
}
