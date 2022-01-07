
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;
struct io_kiocb {int dummy; } ;


 int EOPNOTSUPP ;
 int __sys_sendmsg_sock ;
 int io_send_recvmsg (struct io_kiocb*,struct io_uring_sqe const*,int,int ) ;

__attribute__((used)) static int io_sendmsg(struct io_kiocb *req, const struct io_uring_sqe *sqe,
        bool force_nonblock)
{



 return -EOPNOTSUPP;

}
