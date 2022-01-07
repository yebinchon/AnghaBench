
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int * bvec; } ;


 int kfree (int *) ;

void
xdr_free_bvec(struct xdr_buf *buf)
{
 kfree(buf->bvec);
 buf->bvec = ((void*)0);
}
