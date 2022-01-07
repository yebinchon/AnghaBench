
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_paramhdr {int length; int type; } ;
struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef int phdr ;
typedef int __u8 ;
struct TYPE_2__ {int length; int type; } ;


 int SCTP_ERROR_PROTO_VIOLATION ;
 int htons (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,size_t const,int const*) ;
 int sctp_addto_param (struct sctp_chunk*,int,struct sctp_paramhdr*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,size_t const) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,struct sctp_chunk const*,int) ;

struct sctp_chunk *sctp_make_abort_violation(
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk,
     const __u8 *payload,
     const size_t paylen)
{
 struct sctp_chunk *retval;
 struct sctp_paramhdr phdr;

 retval = sctp_make_abort(asoc, chunk, sizeof(struct sctp_errhdr) +
           paylen + sizeof(phdr));
 if (!retval)
  goto end;

 sctp_init_cause(retval, SCTP_ERROR_PROTO_VIOLATION, paylen +
           sizeof(phdr));

 phdr.type = htons(chunk->chunk_hdr->type);
 phdr.length = chunk->chunk_hdr->length;
 sctp_addto_chunk(retval, paylen, payload);
 sctp_addto_param(retval, sizeof(phdr), &phdr);

end:
 return retval;
}
