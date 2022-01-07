
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_iter {int xpi_cursor; } ;


 int WRITE_ONCE (int ,int *) ;

__attribute__((used)) static
void xprt_iter_default_rewind(struct rpc_xprt_iter *xpi)
{
 WRITE_ONCE(xpi->xpi_cursor, ((void*)0));
}
