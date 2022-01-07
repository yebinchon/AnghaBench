
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_rename {int rn_snamelen; int rn_tnamelen; int rn_tname; int rn_sname; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 void* be32_to_cpup (int ) ;
 int check_filename (int ,int) ;
 int p ;
 int status ;

__attribute__((used)) static __be32
nfsd4_decode_rename(struct nfsd4_compoundargs *argp, struct nfsd4_rename *rename)
{
 DECODE_HEAD;

 READ_BUF(4);
 rename->rn_snamelen = be32_to_cpup(p++);
 READ_BUF(rename->rn_snamelen);
 SAVEMEM(rename->rn_sname, rename->rn_snamelen);
 READ_BUF(4);
 rename->rn_tnamelen = be32_to_cpup(p++);
 READ_BUF(rename->rn_tnamelen);
 SAVEMEM(rename->rn_tname, rename->rn_tnamelen);
 if ((status = check_filename(rename->rn_sname, rename->rn_snamelen)))
  return status;
 if ((status = check_filename(rename->rn_tname, rename->rn_tnamelen)))
  return status;

 DECODE_TAIL;
}
