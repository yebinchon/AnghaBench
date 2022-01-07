
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int error ;


 int SCTP_ERROR_PROTO_VIOLATION ;
 int sctp_addto_chunk (struct sctp_chunk*,int,char const*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,struct sctp_chunk const*,size_t) ;

struct sctp_chunk *sctp_make_violation_max_retrans(
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk)
{
 static const char error[] = "Association exceeded its max_retrans count";
 size_t payload_len = sizeof(error) + sizeof(struct sctp_errhdr);
 struct sctp_chunk *retval;

 retval = sctp_make_abort(asoc, chunk, payload_len);
 if (!retval)
  goto nodata;

 sctp_init_cause(retval, SCTP_ERROR_PROTO_VIOLATION, sizeof(error));
 sctp_addto_chunk(retval, sizeof(error), error);

nodata:
 return retval;
}
