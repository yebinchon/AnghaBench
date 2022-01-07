
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int rds_rdma_cookie_t ;



__attribute__((used)) static inline u32 rds_rdma_cookie_key(rds_rdma_cookie_t cookie)
{
 return cookie;
}
