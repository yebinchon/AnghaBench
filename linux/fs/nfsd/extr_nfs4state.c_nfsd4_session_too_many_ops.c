
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {struct nfsd4_compoundargs* rq_argp; } ;
struct TYPE_2__ {scalar_t__ maxops; } ;
struct nfsd4_session {TYPE_1__ se_fchannel; } ;
struct nfsd4_compoundargs {scalar_t__ opcnt; } ;



__attribute__((used)) static bool nfsd4_session_too_many_ops(struct svc_rqst *rqstp, struct nfsd4_session *session)
{
 struct nfsd4_compoundargs *args = rqstp->rq_argp;

 return args->opcnt > session->se_fchannel.maxops;
}
