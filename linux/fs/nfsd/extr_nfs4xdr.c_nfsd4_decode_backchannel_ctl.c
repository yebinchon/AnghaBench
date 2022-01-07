
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_backchannel_ctl {int bc_cb_sec; int bc_cb_program; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 int nfsd4_decode_cb_sec (struct nfsd4_compoundargs*,int *) ;
 int p ;

__attribute__((used)) static __be32 nfsd4_decode_backchannel_ctl(struct nfsd4_compoundargs *argp, struct nfsd4_backchannel_ctl *bc)
{
 DECODE_HEAD;

 READ_BUF(4);
 bc->bc_cb_program = be32_to_cpup(p++);
 nfsd4_decode_cb_sec(argp, &bc->bc_cb_sec);

 DECODE_TAIL;
}
