
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_buffer {unsigned long rb_sc_last; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static unsigned long rpcrdma_sendctx_next(struct rpcrdma_buffer *buf,
       unsigned long item)
{
 return likely(item < buf->rb_sc_last) ? item + 1 : 0;
}
