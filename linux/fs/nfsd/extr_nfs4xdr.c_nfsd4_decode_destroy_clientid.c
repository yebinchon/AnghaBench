
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_destroy_clientid {int clientid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;

__attribute__((used)) static __be32 nfsd4_decode_destroy_clientid(struct nfsd4_compoundargs *argp, struct nfsd4_destroy_clientid *dc)
{
 DECODE_HEAD;

 READ_BUF(8);
 COPYMEM(&dc->clientid, 8);

 DECODE_TAIL;
}
