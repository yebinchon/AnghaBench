
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NH_DEV_HASHBITS ;
 int NH_DEV_HASHSIZE ;

__attribute__((used)) static unsigned int nh_dev_hashfn(unsigned int val)
{
 unsigned int mask = NH_DEV_HASHSIZE - 1;

 return (val ^
  (val >> NH_DEV_HASHBITS) ^
  (val >> (NH_DEV_HASHBITS * 2))) & mask;
}
