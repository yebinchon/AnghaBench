
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int HEADER_TSTAMP_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 compute_cycle_count(__be32 ctx_header_tstamp)
{
 u32 tstamp = be32_to_cpu(ctx_header_tstamp) & HEADER_TSTAMP_MASK;
 return (((tstamp >> 13) & 0x07) * 8000) + (tstamp & 0x1fff);
}
