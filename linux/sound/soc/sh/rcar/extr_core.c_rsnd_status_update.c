
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static int rsnd_status_update(u32 *status,
         int shift, int add, int timing)
{
 u32 mask = 0xF << shift;
 u8 val = (*status >> shift) & 0xF;
 u8 next_val = (val + add) & 0xF;
 int func_call = (val == timing);

 if (next_val == 0xF)
  func_call = 0;
 else
  *status = (*status & ~mask) + (next_val << shift);

 return func_call;
}
