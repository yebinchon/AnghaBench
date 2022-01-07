
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open_downgrade {int od_share_deny; int od_deleg_want; int od_share_access; int od_seqid; int od_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 scalar_t__ nfsd4_decode_share_access (struct nfsd4_compoundargs*,int *,int *,int *) ;
 scalar_t__ nfsd4_decode_share_deny (struct nfsd4_compoundargs*,int *) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 int p ;
 scalar_t__ status ;

__attribute__((used)) static __be32
nfsd4_decode_open_downgrade(struct nfsd4_compoundargs *argp, struct nfsd4_open_downgrade *open_down)
{
 DECODE_HEAD;

 status = nfsd4_decode_stateid(argp, &open_down->od_stateid);
 if (status)
  return status;
 READ_BUF(4);
 open_down->od_seqid = be32_to_cpup(p++);
 status = nfsd4_decode_share_access(argp, &open_down->od_share_access,
        &open_down->od_deleg_want, ((void*)0));
 if (status)
  return status;
 status = nfsd4_decode_share_deny(argp, &open_down->od_share_deny);
 if (status)
  return status;
 DECODE_TAIL;
}
