
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline u64 qfq_round_down(u64 ts, unsigned int shift)
{
 return ts & ~((1ULL << shift) - 1);
}
