
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sctp_params {int v; TYPE_1__* p; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {int length; } ;


 int SCTP_ERROR_DNS_FAILED ;
 int ntohs (int ) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_op_error (struct sctp_association const*,struct sctp_chunk*,int ,int ,int ,int ) ;

__attribute__((used)) static int sctp_process_hn_param(const struct sctp_association *asoc,
     union sctp_params param,
     struct sctp_chunk *chunk,
     struct sctp_chunk **errp)
{
 __u16 len = ntohs(param.p->length);






 if (*errp)
  sctp_chunk_free(*errp);

 *errp = sctp_make_op_error(asoc, chunk, SCTP_ERROR_DNS_FAILED,
       param.v, len, 0);


 return 0;
}
