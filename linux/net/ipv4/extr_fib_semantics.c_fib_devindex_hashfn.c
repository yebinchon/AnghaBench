
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DEVINDEX_HASHBITS ;
 int DEVINDEX_HASHSIZE ;

__attribute__((used)) static inline unsigned int fib_devindex_hashfn(unsigned int val)
{
 unsigned int mask = DEVINDEX_HASHSIZE - 1;

 return (val ^
  (val >> DEVINDEX_HASHBITS) ^
  (val >> (DEVINDEX_HASHBITS * 2))) & mask;
}
