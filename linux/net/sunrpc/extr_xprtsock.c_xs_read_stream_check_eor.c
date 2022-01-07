
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int dummy; } ;
struct msghdr {int msg_flags; } ;


 int MSG_EOR ;
 scalar_t__ xs_read_stream_request_done (struct sock_xprt*) ;

__attribute__((used)) static void
xs_read_stream_check_eor(struct sock_xprt *transport,
  struct msghdr *msg)
{
 if (xs_read_stream_request_done(transport))
  msg->msg_flags |= MSG_EOR;
}
