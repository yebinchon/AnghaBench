
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msghdr {int msg_iovlen; int msg_controllen; struct cmsghdr* msg_control; TYPE_1__* msg_iov; } ;
struct cmsghdr {int dummy; } ;
typedef int cookie ;
struct TYPE_2__ {scalar_t__ iov_len; } ;


 int CMSG_SPACE (int) ;
 scalar_t__ EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_ZEROCOPY ;
 int PF_RDS ;
 int add_zcopy_cookie (struct msghdr*,int ) ;
 int bytes ;
 scalar_t__ cfg_verbose ;
 scalar_t__ errno ;
 int error (int,scalar_t__,char*) ;
 int expected_completions ;
 int fprintf (int ,char*,int,int) ;
 int memset (struct cmsghdr**,int ,int) ;
 int packets ;
 int sendmsg (int,struct msghdr*,int) ;
 int stderr ;

__attribute__((used)) static bool do_sendmsg(int fd, struct msghdr *msg, bool do_zerocopy, int domain)
{
 int ret, len, i, flags;
 static uint32_t cookie;
 char ckbuf[CMSG_SPACE(sizeof(cookie))];

 len = 0;
 for (i = 0; i < msg->msg_iovlen; i++)
  len += msg->msg_iov[i].iov_len;

 flags = MSG_DONTWAIT;
 if (do_zerocopy) {
  flags |= MSG_ZEROCOPY;
  if (domain == PF_RDS) {
   memset(&msg->msg_control, 0, sizeof(msg->msg_control));
   msg->msg_controllen = CMSG_SPACE(sizeof(cookie));
   msg->msg_control = (struct cmsghdr *)ckbuf;
   add_zcopy_cookie(msg, ++cookie);
  }
 }

 ret = sendmsg(fd, msg, flags);
 if (ret == -1 && errno == EAGAIN)
  return 0;
 if (ret == -1)
  error(1, errno, "send");
 if (cfg_verbose && ret != len)
  fprintf(stderr, "send: ret=%u != %u\n", ret, len);

 if (len) {
  packets++;
  bytes += ret;
  if (do_zerocopy && ret)
   expected_completions++;
 }
 if (do_zerocopy && domain == PF_RDS) {
  msg->msg_control = ((void*)0);
  msg->msg_controllen = 0;
 }

 return 1;
}
