
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_stream_out_ext {int outq; } ;
struct sctp_outq {TYPE_1__* asoc; int out_qlen; int out_chunk_list; } ;
struct sctp_chunk {int stream_list; TYPE_2__* skb; int list; } ;
typedef int __u16 ;
struct TYPE_6__ {struct sctp_stream_out_ext* ext; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_4__ {int stream; } ;


 TYPE_3__* SCTP_SO (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int sctp_chunk_stream_no (struct sctp_chunk*) ;

__attribute__((used)) static inline void sctp_outq_tail_data(struct sctp_outq *q,
           struct sctp_chunk *ch)
{
 struct sctp_stream_out_ext *oute;
 __u16 stream;

 list_add_tail(&ch->list, &q->out_chunk_list);
 q->out_qlen += ch->skb->len;

 stream = sctp_chunk_stream_no(ch);
 oute = SCTP_SO(&q->asoc->stream, stream)->ext;
 list_add_tail(&ch->stream_list, &oute->outq);
}
