
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {struct nlm_reboot* rq_argp; } ;
struct TYPE_2__ {int data; } ;
struct nlm_reboot {TYPE_1__ priv; int state; int len; int mon; } ;
typedef int __be32 ;


 int SM_MAXSTRLEN ;
 int SM_PRIV_SIZE ;
 int XDR_QUADLEN (int ) ;
 int memcpy (int *,int *,int) ;
 int ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_string_inplace (int *,int *,int *,int ) ;

int
nlm4svc_decode_reboot(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_reboot *argp = rqstp->rq_argp;

 if (!(p = xdr_decode_string_inplace(p, &argp->mon, &argp->len, SM_MAXSTRLEN)))
  return 0;
 argp->state = ntohl(*p++);
 memcpy(&argp->priv.data, p, sizeof(argp->priv.data));
 p += XDR_QUADLEN(SM_PRIV_SIZE);
 return xdr_argsize_check(rqstp, p);
}
