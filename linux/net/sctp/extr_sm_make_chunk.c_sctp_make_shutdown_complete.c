
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int transport; } ;
struct sctp_association {int dummy; } ;
typedef int __u8 ;


 int GFP_ATOMIC ;
 int SCTP_CHUNK_FLAG_T ;
 int SCTP_CID_SHUTDOWN_COMPLETE ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int ,int ) ;

struct sctp_chunk *sctp_make_shutdown_complete(
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;
 __u8 flags = 0;




 flags |= asoc ? 0 : SCTP_CHUNK_FLAG_T;

 retval = sctp_make_control(asoc, SCTP_CID_SHUTDOWN_COMPLETE, flags,
       0, GFP_ATOMIC);
 if (retval && chunk)
  retval->transport = chunk->transport;

 return retval;
}
