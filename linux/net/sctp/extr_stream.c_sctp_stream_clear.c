
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_stream {int outcnt; int incnt; } ;
struct TYPE_4__ {scalar_t__ mid; } ;
struct TYPE_3__ {scalar_t__ mid_uo; scalar_t__ mid; } ;


 TYPE_2__* SCTP_SI (struct sctp_stream*,int) ;
 TYPE_1__* SCTP_SO (struct sctp_stream*,int) ;

void sctp_stream_clear(struct sctp_stream *stream)
{
 int i;

 for (i = 0; i < stream->outcnt; i++) {
  SCTP_SO(stream, i)->mid = 0;
  SCTP_SO(stream, i)->mid_uo = 0;
 }

 for (i = 0; i < stream->incnt; i++)
  SCTP_SI(stream, i)->mid = 0;
}
