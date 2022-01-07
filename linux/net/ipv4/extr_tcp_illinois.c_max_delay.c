
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct illinois {scalar_t__ base_rtt; scalar_t__ max_rtt; } ;



__attribute__((used)) static inline u32 max_delay(const struct illinois *ca)
{
 return ca->max_rtt - ca->base_rtt;
}
