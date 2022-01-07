
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct kvec {int dummy; } ;


 int EINVAL ;
 int EPIPE ;
 int ML_ERROR ;
 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,size_t,size_t) ;
 scalar_t__ likely (int) ;
 int mlog (int ,char*,int,...) ;

__attribute__((used)) static int o2net_send_tcp_msg(struct socket *sock, struct kvec *vec,
         size_t veclen, size_t total)
{
 int ret;
 struct msghdr msg = {.msg_flags = 0,};

 if (sock == ((void*)0)) {
  ret = -EINVAL;
  goto out;
 }

 ret = kernel_sendmsg(sock, &msg, vec, veclen, total);
 if (likely(ret == total))
  return 0;
 mlog(ML_ERROR, "sendmsg returned %d instead of %zu\n", ret, total);
 if (ret >= 0)
  ret = -EPIPE;
out:
 mlog(0, "returning error: %d\n", ret);
 return ret;
}
