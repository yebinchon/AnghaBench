
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int QUEUE_LENGTH ;
 int compute_cycle_count (int const) ;
 int increment_cycle_count (int ,int ) ;

__attribute__((used)) static inline u32 compute_it_cycle(const __be32 ctx_header_tstamp)
{
 u32 cycle = compute_cycle_count(ctx_header_tstamp);
 return increment_cycle_count(cycle, QUEUE_LENGTH);
}
