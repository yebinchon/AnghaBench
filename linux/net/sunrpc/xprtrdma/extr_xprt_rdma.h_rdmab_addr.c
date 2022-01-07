
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int addr; } ;
struct rpcrdma_regbuf {TYPE_1__ rg_iov; } ;



__attribute__((used)) static inline u64 rdmab_addr(struct rpcrdma_regbuf *rb)
{
 return rb->rg_iov.addr;
}
