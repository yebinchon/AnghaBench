
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int rds_rdma_cookie_t ;



__attribute__((used)) static inline rds_rdma_cookie_t rds_rdma_make_cookie(u32 r_key, u32 offset)
{
 return r_key | (((u64) offset) << 32);
}
