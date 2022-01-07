
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_setclientid_confirm {int sc_confirm; int sc_clientid; } ;
struct nfsd4_compoundargs {int minorversion; } ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int NFS4_VERIFIER_SIZE ;
 int READ_BUF (int) ;
 int nfserr_notsupp ;

__attribute__((used)) static __be32
nfsd4_decode_setclientid_confirm(struct nfsd4_compoundargs *argp, struct nfsd4_setclientid_confirm *scd_c)
{
 DECODE_HEAD;

 if (argp->minorversion >= 1)
  return nfserr_notsupp;

 READ_BUF(8 + NFS4_VERIFIER_SIZE);
 COPYMEM(&scd_c->sc_clientid, 8);
 COPYMEM(&scd_c->sc_confirm, NFS4_VERIFIER_SIZE);

 DECODE_TAIL;
}
