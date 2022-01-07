
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sctp_params {int v; TYPE_1__* p; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef enum sctp_ierror { ____Placeholder_sctp_ierror } sctp_ierror ;
struct TYPE_2__ {int type; int length; } ;


 int SCTP_ERROR_UNKNOWN_PARAM ;
 int SCTP_IERROR_ERROR ;
 int SCTP_IERROR_NOMEM ;
 int SCTP_IERROR_NO_ERROR ;


 int SCTP_PARAM_ACTION_MASK ;


 int ntohs (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int ,int ) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_op_error_limited (struct sctp_association const*,struct sctp_chunk*) ;

__attribute__((used)) static enum sctp_ierror sctp_process_unk_param(
     const struct sctp_association *asoc,
     union sctp_params param,
     struct sctp_chunk *chunk,
     struct sctp_chunk **errp)
{
 int retval = SCTP_IERROR_NO_ERROR;

 switch (param.p->type & SCTP_PARAM_ACTION_MASK) {
 case 131:
  retval = SCTP_IERROR_ERROR;
  break;
 case 129:
  break;
 case 130:
  retval = SCTP_IERROR_ERROR;

 case 128:



  if (!*errp) {
   *errp = sctp_make_op_error_limited(asoc, chunk);
   if (!*errp) {





    retval = SCTP_IERROR_NOMEM;
    break;
   }
  }

  if (!sctp_init_cause(*errp, SCTP_ERROR_UNKNOWN_PARAM,
         ntohs(param.p->length)))
   sctp_addto_chunk(*errp, ntohs(param.p->length),
      param.v);
  break;
 default:
  break;
 }

 return retval;
}
