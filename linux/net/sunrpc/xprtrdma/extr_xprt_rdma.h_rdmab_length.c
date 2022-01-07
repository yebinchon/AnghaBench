
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int length; } ;
struct rpcrdma_regbuf {TYPE_1__ rg_iov; } ;



__attribute__((used)) static inline u32 rdmab_length(struct rpcrdma_regbuf *rb)
{
 return rb->rg_iov.length;
}
