
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int minorversion; } ;
typedef int clientid_t ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int nfserr_notsupp ;

__attribute__((used)) static __be32
nfsd4_decode_renew(struct nfsd4_compoundargs *argp, clientid_t *clientid)
{
 DECODE_HEAD;

 if (argp->minorversion >= 1)
  return nfserr_notsupp;

 READ_BUF(sizeof(clientid_t));
 COPYMEM(clientid, sizeof(clientid_t));

 DECODE_TAIL;
}
