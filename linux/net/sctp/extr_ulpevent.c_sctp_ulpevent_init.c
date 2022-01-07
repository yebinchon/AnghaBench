
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {unsigned int rmem_len; int msg_flags; } ;
typedef int __u16 ;


 int memset (struct sctp_ulpevent*,int ,int) ;

__attribute__((used)) static void sctp_ulpevent_init(struct sctp_ulpevent *event,
          __u16 msg_flags,
          unsigned int len)
{
 memset(event, 0, sizeof(struct sctp_ulpevent));
 event->msg_flags = msg_flags;
 event->rmem_len = len;
}
