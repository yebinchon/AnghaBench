
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int transport; } ;
struct sctp_association {int dummy; } ;


 int GFP_ATOMIC ;
 int SCTP_CID_SHUTDOWN_ACK ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int ,int ) ;

struct sctp_chunk *sctp_make_shutdown_ack(const struct sctp_association *asoc,
       const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;

 retval = sctp_make_control(asoc, SCTP_CID_SHUTDOWN_ACK, 0, 0,
       GFP_ATOMIC);
 if (retval && chunk)
  retval->transport = chunk->transport;

 return retval;
}
