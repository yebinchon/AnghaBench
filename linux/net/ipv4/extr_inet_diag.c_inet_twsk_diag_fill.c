
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct TYPE_2__ {long expires; } ;
struct inet_timewait_sock {scalar_t__ tw_state; int tw_substate; TYPE_1__ tw_timer; } ;
struct inet_diag_msg {int idiag_timer; scalar_t__ idiag_inode; scalar_t__ idiag_uid; scalar_t__ idiag_wqueue; scalar_t__ idiag_rqueue; int idiag_expires; int idiag_state; scalar_t__ idiag_retrans; } ;


 int BUG_ON (int) ;
 int EMSGSIZE ;
 scalar_t__ TCP_TIME_WAIT ;
 int inet_diag_msg_common_fill (struct inet_diag_msg*,struct sock*) ;
 struct inet_timewait_sock* inet_twsk (struct sock*) ;
 long jiffies ;
 int jiffies_to_msecs (long) ;
 struct inet_diag_msg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int inet_twsk_diag_fill(struct sock *sk,
          struct sk_buff *skb,
          u32 portid, u32 seq, u16 nlmsg_flags,
          const struct nlmsghdr *unlh)
{
 struct inet_timewait_sock *tw = inet_twsk(sk);
 struct inet_diag_msg *r;
 struct nlmsghdr *nlh;
 long tmo;

 nlh = nlmsg_put(skb, portid, seq, unlh->nlmsg_type, sizeof(*r),
   nlmsg_flags);
 if (!nlh)
  return -EMSGSIZE;

 r = nlmsg_data(nlh);
 BUG_ON(tw->tw_state != TCP_TIME_WAIT);

 tmo = tw->tw_timer.expires - jiffies;
 if (tmo < 0)
  tmo = 0;

 inet_diag_msg_common_fill(r, sk);
 r->idiag_retrans = 0;

 r->idiag_state = tw->tw_substate;
 r->idiag_timer = 3;
 r->idiag_expires = jiffies_to_msecs(tmo);
 r->idiag_rqueue = 0;
 r->idiag_wqueue = 0;
 r->idiag_uid = 0;
 r->idiag_inode = 0;

 nlmsg_end(skb, nlh);
 return 0;
}
