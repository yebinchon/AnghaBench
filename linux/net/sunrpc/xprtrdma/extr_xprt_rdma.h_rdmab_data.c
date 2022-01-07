
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_regbuf {void* rg_data; } ;



__attribute__((used)) static inline void *rdmab_data(const struct rpcrdma_regbuf *rb)
{
 return rb->rg_data;
}
