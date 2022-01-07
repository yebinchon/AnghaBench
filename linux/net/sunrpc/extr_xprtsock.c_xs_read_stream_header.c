
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fraghdr; } ;
struct sock_xprt {int sock; TYPE_1__ recv; } ;
struct msghdr {int dummy; } ;
struct kvec {size_t iov_len; int * iov_base; } ;
typedef int ssize_t ;


 int xs_read_kvec (int ,struct msghdr*,int,struct kvec*,size_t,size_t) ;

__attribute__((used)) static ssize_t
xs_read_stream_header(struct sock_xprt *transport, struct msghdr *msg,
  int flags, size_t want, size_t seek)
{
 struct kvec kvec = {
  .iov_base = &transport->recv.fraghdr,
  .iov_len = want,
 };
 return xs_read_kvec(transport->sock, msg, flags, &kvec, want, seek);
}
