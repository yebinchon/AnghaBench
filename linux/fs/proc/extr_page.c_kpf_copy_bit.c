
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 kpf_copy_bit(u64 kflags, int ubit, int kbit)
{
 return ((kflags >> kbit) & 1) << ubit;
}
