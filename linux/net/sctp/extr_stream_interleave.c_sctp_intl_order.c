
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpq {TYPE_1__* asoc; } ;
struct sctp_ulpevent {scalar_t__ mid; int stream; } ;
struct sctp_stream {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {struct sctp_stream stream; } ;


 int in ;
 int sctp_intl_retrieve_ordered (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int sctp_intl_store_ordered (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int sctp_mid_next (struct sctp_stream*,int ,int ) ;
 scalar_t__ sctp_mid_peek (struct sctp_stream*,int ,int ) ;

__attribute__((used)) static struct sctp_ulpevent *sctp_intl_order(struct sctp_ulpq *ulpq,
          struct sctp_ulpevent *event)
{
 struct sctp_stream *stream;
 __u16 sid;

 stream = &ulpq->asoc->stream;
 sid = event->stream;

 if (event->mid != sctp_mid_peek(stream, in, sid)) {
  sctp_intl_store_ordered(ulpq, event);
  return ((void*)0);
 }

 sctp_mid_next(stream, in, sid);

 sctp_intl_retrieve_ordered(ulpq, event);

 return event;
}
