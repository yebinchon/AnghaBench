
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;


 int SCTP_ERROR_INV_PARAM ;
 int sctp_init_cause (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_op_error_space (struct sctp_association const*,struct sctp_chunk*,int ) ;

__attribute__((used)) static int sctp_process_inv_mandatory(const struct sctp_association *asoc,
          struct sctp_chunk *chunk,
          struct sctp_chunk **errp)
{


 if (!*errp)
  *errp = sctp_make_op_error_space(asoc, chunk, 0);

 if (*errp)
  sctp_init_cause(*errp, SCTP_ERROR_INV_PARAM, 0);


 return 0;
}
