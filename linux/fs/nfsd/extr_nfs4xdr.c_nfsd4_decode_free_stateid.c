
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_opaque; int si_generation; } ;
struct nfsd4_free_stateid {TYPE_1__ fr_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int stateid_t ;
typedef int stateid_opaque_t ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 int p ;

__attribute__((used)) static __be32
nfsd4_decode_free_stateid(struct nfsd4_compoundargs *argp,
     struct nfsd4_free_stateid *free_stateid)
{
 DECODE_HEAD;

 READ_BUF(sizeof(stateid_t));
 free_stateid->fr_stateid.si_generation = be32_to_cpup(p++);
 COPYMEM(&free_stateid->fr_stateid.si_opaque, sizeof(stateid_opaque_t));

 DECODE_TAIL;
}
