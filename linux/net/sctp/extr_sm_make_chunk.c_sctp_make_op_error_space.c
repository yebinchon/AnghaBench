
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {int transport; } ;
struct sctp_association {int dummy; } ;


 int GFP_ATOMIC ;
 int SCTP_CID_ERROR ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_op_error_space(
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk,
     size_t size)
{
 struct sctp_chunk *retval;

 retval = sctp_make_control(asoc, SCTP_CID_ERROR, 0,
       sizeof(struct sctp_errhdr) + size,
       GFP_ATOMIC);
 if (!retval)
  goto nodata;
 if (chunk)
  retval->transport = chunk->transport;

nodata:
 return retval;
}
