
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msghdr {TYPE_1__* msg_iov; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct TYPE_3__ {int iov_len; } ;


 scalar_t__ AF_INET ;
 int IPPROTO_UDP ;
 int PF_INET ;
 int PF_INET6 ;
 int UDP_CORK ;
 int cfg_cork ;
 scalar_t__ cfg_cork_mixed ;
 TYPE_2__ cfg_dst_addr ;
 int cfg_payload_len ;
 int cfg_zerocopy ;
 int do_sendmsg (int,struct msghdr*,int,int ) ;
 int do_setsockopt (int,int ,int ,int) ;

__attribute__((used)) static void do_sendmsg_corked(int fd, struct msghdr *msg)
{
 bool do_zerocopy = cfg_zerocopy;
 int i, payload_len, extra_len;


 payload_len = cfg_payload_len / cfg_cork;
 extra_len = cfg_payload_len - (cfg_cork * payload_len);

 do_setsockopt(fd, IPPROTO_UDP, UDP_CORK, 1);

 for (i = 0; i < cfg_cork; i++) {




  if (cfg_cork_mixed)
   do_zerocopy = (i & 1);

  msg->msg_iov[0].iov_len = payload_len + extra_len;
  extra_len = 0;

  do_sendmsg(fd, msg, do_zerocopy,
      (cfg_dst_addr.ss_family == AF_INET ?
       PF_INET : PF_INET6));
 }

 do_setsockopt(fd, IPPROTO_UDP, UDP_CORK, 0);
}
