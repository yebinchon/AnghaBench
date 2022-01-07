
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 clocksource_delta(u64 now, u64 last, u64 mask)
{
 return (now - last) & mask;
}
