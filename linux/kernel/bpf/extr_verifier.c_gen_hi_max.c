
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int value; int mask; } ;



__attribute__((used)) static u64 gen_hi_max(struct tnum var)
{
 return (var.value | var.mask) & ~0xffffffffULL;
}
