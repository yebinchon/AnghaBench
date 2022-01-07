
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;



__attribute__((used)) static unsigned int fib_info_hashfn_1(int init_val, u8 protocol, u8 scope,
          u32 prefsrc, u32 priority)
{
 unsigned int val = init_val;

 val ^= (protocol << 8) | scope;
 val ^= prefsrc;
 val ^= priority;

 return val;
}
