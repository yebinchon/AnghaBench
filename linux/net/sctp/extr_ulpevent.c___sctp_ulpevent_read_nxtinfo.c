
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct sctp_ulpevent {int asoc; int flags; int ppid; int stream; } ;
struct sctp_nxtinfo {int nxt_assoc_id; int nxt_length; int nxt_flags; int nxt_ppid; int nxt_sid; } ;
struct msghdr {int dummy; } ;
typedef int nxtinfo ;


 int IPPROTO_SCTP ;
 int SCTP_NOTIFICATION ;
 int SCTP_NXTINFO ;
 int memset (struct sctp_nxtinfo*,int ,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct sctp_nxtinfo*) ;
 int sctp_assoc2id (int ) ;
 scalar_t__ sctp_ulpevent_is_notification (struct sctp_ulpevent const*) ;

__attribute__((used)) static void __sctp_ulpevent_read_nxtinfo(const struct sctp_ulpevent *event,
      struct msghdr *msghdr,
      const struct sk_buff *skb)
{
 struct sctp_nxtinfo nxtinfo;

 memset(&nxtinfo, 0, sizeof(nxtinfo));
 nxtinfo.nxt_sid = event->stream;
 nxtinfo.nxt_ppid = event->ppid;
 nxtinfo.nxt_flags = event->flags;
 if (sctp_ulpevent_is_notification(event))
  nxtinfo.nxt_flags |= SCTP_NOTIFICATION;
 nxtinfo.nxt_length = skb->len;
 nxtinfo.nxt_assoc_id = sctp_assoc2id(event->asoc);

 put_cmsg(msghdr, IPPROTO_SCTP, SCTP_NXTINFO,
   sizeof(nxtinfo), &nxtinfo);
}
