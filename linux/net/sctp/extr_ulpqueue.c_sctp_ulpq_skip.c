
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpq {TYPE_1__* asoc; } ;
struct sctp_stream {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {struct sctp_stream stream; } ;


 scalar_t__ SSN_lt (int ,int ) ;
 int in ;
 int sctp_ssn_peek (struct sctp_stream*,int ,int ) ;
 int sctp_ssn_skip (struct sctp_stream*,int ,int ,int ) ;
 int sctp_ulpq_reap_ordered (struct sctp_ulpq*,int ) ;

void sctp_ulpq_skip(struct sctp_ulpq *ulpq, __u16 sid, __u16 ssn)
{
 struct sctp_stream *stream;


 stream = &ulpq->asoc->stream;


 if (SSN_lt(ssn, sctp_ssn_peek(stream, in, sid)))
  return;


 sctp_ssn_skip(stream, in, sid, ssn);




 sctp_ulpq_reap_ordered(ulpq, sid);
}
