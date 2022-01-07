
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_paramhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;


 int sctp_chunk_free (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_violation_paramlen (struct sctp_association const*,struct sctp_chunk const*,struct sctp_paramhdr*) ;

__attribute__((used)) static int sctp_process_inv_paramlength(const struct sctp_association *asoc,
     struct sctp_paramhdr *param,
     const struct sctp_chunk *chunk,
     struct sctp_chunk **errp)
{



 if (*errp)
  sctp_chunk_free(*errp);


 *errp = sctp_make_violation_paramlen(asoc, chunk, param);

 return 0;
}
