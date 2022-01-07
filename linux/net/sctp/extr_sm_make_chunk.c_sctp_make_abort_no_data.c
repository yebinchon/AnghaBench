
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsn ;
struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {int transport; } ;
struct sctp_association {int dummy; } ;
typedef int payload ;
typedef int __u32 ;
typedef int __be32 ;


 int SCTP_ERROR_NO_DATA ;
 int htonl (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,void const*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,struct sctp_chunk const*,int) ;

struct sctp_chunk *sctp_make_abort_no_data(
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk,
     __u32 tsn)
{
 struct sctp_chunk *retval;
 __be32 payload;

 retval = sctp_make_abort(asoc, chunk,
     sizeof(struct sctp_errhdr) + sizeof(tsn));

 if (!retval)
  goto no_mem;


 payload = htonl(tsn);
 sctp_init_cause(retval, SCTP_ERROR_NO_DATA, sizeof(payload));
 sctp_addto_chunk(retval, sizeof(payload), (const void *)&payload);
 if (chunk)
  retval->transport = chunk->transport;

no_mem:
 return retval;
}
