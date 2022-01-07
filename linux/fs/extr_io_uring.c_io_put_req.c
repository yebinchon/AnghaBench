
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_kiocb {int refs; } ;


 int io_free_req (struct io_kiocb*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void io_put_req(struct io_kiocb *req)
{
 if (refcount_dec_and_test(&req->refs))
  io_free_req(req);
}
