
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_kiocb {int flags; } ;


 int REQ_F_FAIL_LINK ;
 int REQ_F_LINK ;
 int __io_free_req (struct io_kiocb*) ;
 int io_fail_links (struct io_kiocb*) ;
 int io_req_link_next (struct io_kiocb*) ;

__attribute__((used)) static void io_free_req(struct io_kiocb *req)
{






 if (req->flags & REQ_F_LINK) {
  if (req->flags & REQ_F_FAIL_LINK)
   io_fail_links(req);
  else
   io_req_link_next(req);
 }

 __io_free_req(req);
}
