
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_secinfo_no_name {int sin_style; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 int p ;

__attribute__((used)) static __be32
nfsd4_decode_secinfo_no_name(struct nfsd4_compoundargs *argp,
       struct nfsd4_secinfo_no_name *sin)
{
 DECODE_HEAD;

 READ_BUF(4);
 sin->sin_style = be32_to_cpup(p++);
 DECODE_TAIL;
}
