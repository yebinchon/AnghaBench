
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fib_info_hash_size ;

__attribute__((used)) static unsigned int fib_info_hashfn_result(unsigned int val)
{
 unsigned int mask = (fib_info_hash_size - 1);

 return (val ^ (val >> 7) ^ (val >> 12)) & mask;
}
