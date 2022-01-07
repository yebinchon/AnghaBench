
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sockcm_cookie {int mark; int tsflags; int transmit_time; } ;
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;
struct cmsghdr {int cmsg_type; int cmsg_len; } ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int EINVAL ;
 int EPERM ;



 int SOCK_TXTIME ;
 int SOF_TIMESTAMPING_TX_RECORD_MASK ;


 int get_unaligned (int *) ;
 int ns_capable (int ,int ) ;
 int sock_flag (struct sock*,int ) ;
 TYPE_1__* sock_net (struct sock*) ;

int __sock_cmsg_send(struct sock *sk, struct msghdr *msg, struct cmsghdr *cmsg,
       struct sockcm_cookie *sockc)
{
 u32 tsflags;

 switch (cmsg->cmsg_type) {
 case 129:
  if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
   return -EPERM;
  if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
   return -EINVAL;
  sockc->mark = *(u32 *)CMSG_DATA(cmsg);
  break;
 case 128:
  if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
   return -EINVAL;

  tsflags = *(u32 *)CMSG_DATA(cmsg);
  if (tsflags & ~SOF_TIMESTAMPING_TX_RECORD_MASK)
   return -EINVAL;

  sockc->tsflags &= ~SOF_TIMESTAMPING_TX_RECORD_MASK;
  sockc->tsflags |= tsflags;
  break;
 case 130:
  if (!sock_flag(sk, SOCK_TXTIME))
   return -EINVAL;
  if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
   return -EINVAL;
  sockc->transmit_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
  break;

 case 131:
 case 132:
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
