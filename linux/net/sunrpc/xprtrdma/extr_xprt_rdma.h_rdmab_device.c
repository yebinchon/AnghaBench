
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_regbuf {struct ib_device* rg_device; } ;
struct ib_device {int dummy; } ;



__attribute__((used)) static inline struct ib_device *rdmab_device(struct rpcrdma_regbuf *rb)
{
 return rb->rg_device;
}
