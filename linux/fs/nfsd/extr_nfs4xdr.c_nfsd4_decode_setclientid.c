
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct nfsd4_setclientid {int se_callback_netid_len; int se_callback_addr_len; void* se_callback_ident; int se_callback_addr_val; int se_callback_netid_val; void* se_callback_prog; int se_name; TYPE_1__ se_verf; } ;
struct nfsd4_compoundargs {int minorversion; } ;
typedef int __be32 ;


 int COPYMEM (int ,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int NFS4_VERIFIER_SIZE ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 void* be32_to_cpup (int ) ;
 scalar_t__ nfsd4_decode_opaque (struct nfsd4_compoundargs*,int *) ;
 int nfserr_bad_xdr ;
 int nfserr_notsupp ;
 int p ;
 scalar_t__ status ;

__attribute__((used)) static __be32
nfsd4_decode_setclientid(struct nfsd4_compoundargs *argp, struct nfsd4_setclientid *setclientid)
{
 DECODE_HEAD;

 if (argp->minorversion >= 1)
  return nfserr_notsupp;

 READ_BUF(NFS4_VERIFIER_SIZE);
 COPYMEM(setclientid->se_verf.data, NFS4_VERIFIER_SIZE);

 status = nfsd4_decode_opaque(argp, &setclientid->se_name);
 if (status)
  return nfserr_bad_xdr;
 READ_BUF(8);
 setclientid->se_callback_prog = be32_to_cpup(p++);
 setclientid->se_callback_netid_len = be32_to_cpup(p++);
 READ_BUF(setclientid->se_callback_netid_len);
 SAVEMEM(setclientid->se_callback_netid_val, setclientid->se_callback_netid_len);
 READ_BUF(4);
 setclientid->se_callback_addr_len = be32_to_cpup(p++);

 READ_BUF(setclientid->se_callback_addr_len);
 SAVEMEM(setclientid->se_callback_addr_val, setclientid->se_callback_addr_len);
 READ_BUF(4);
 setclientid->se_callback_ident = be32_to_cpup(p++);

 DECODE_TAIL;
}
