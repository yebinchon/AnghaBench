
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpevent {TYPE_1__* asoc; int cumtsn; int tsn; int flags; int ppid; int ssn; int stream; } ;
struct sctp_rcvinfo {int rcv_context; int rcv_assoc_id; int rcv_cumtsn; int rcv_tsn; int rcv_flags; int rcv_ppid; int rcv_ssn; int rcv_sid; } ;
struct msghdr {int dummy; } ;
typedef int rinfo ;
struct TYPE_2__ {int default_rcv_context; } ;


 int IPPROTO_SCTP ;
 int SCTP_RCVINFO ;
 int memset (struct sctp_rcvinfo*,int ,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct sctp_rcvinfo*) ;
 int sctp_assoc2id (TYPE_1__*) ;
 scalar_t__ sctp_ulpevent_is_notification (struct sctp_ulpevent const*) ;

void sctp_ulpevent_read_rcvinfo(const struct sctp_ulpevent *event,
    struct msghdr *msghdr)
{
 struct sctp_rcvinfo rinfo;

 if (sctp_ulpevent_is_notification(event))
  return;

 memset(&rinfo, 0, sizeof(struct sctp_rcvinfo));
 rinfo.rcv_sid = event->stream;
 rinfo.rcv_ssn = event->ssn;
 rinfo.rcv_ppid = event->ppid;
 rinfo.rcv_flags = event->flags;
 rinfo.rcv_tsn = event->tsn;
 rinfo.rcv_cumtsn = event->cumtsn;
 rinfo.rcv_assoc_id = sctp_assoc2id(event->asoc);
 rinfo.rcv_context = event->asoc->default_rcv_context;

 put_cmsg(msghdr, IPPROTO_SCTP, SCTP_RCVINFO,
   sizeof(rinfo), &rinfo);
}
