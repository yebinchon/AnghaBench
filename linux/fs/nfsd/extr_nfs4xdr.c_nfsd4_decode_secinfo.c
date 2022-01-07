
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_secinfo {int si_namelen; int si_name; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 int be32_to_cpup (int ) ;
 scalar_t__ check_filename (int ,int) ;
 int p ;
 scalar_t__ status ;

__attribute__((used)) static __be32
nfsd4_decode_secinfo(struct nfsd4_compoundargs *argp,
       struct nfsd4_secinfo *secinfo)
{
 DECODE_HEAD;

 READ_BUF(4);
 secinfo->si_namelen = be32_to_cpup(p++);
 READ_BUF(secinfo->si_namelen);
 SAVEMEM(secinfo->si_name, secinfo->si_namelen);
 status = check_filename(secinfo->si_name, secinfo->si_namelen);
 if (status)
  return status;
 DECODE_TAIL;
}
