
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_ol_stateid {TYPE_2__* st_stateowner; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ so_is_open_owner; } ;
struct TYPE_3__ {int oo_flags; } ;


 int NFS4_OO_CONFIRMED ;
 int nfs_ok ;
 int nfserr_bad_stateid ;
 TYPE_1__* openowner (TYPE_2__*) ;

__attribute__((used)) static __be32 nfsd4_check_openowner_confirmed(struct nfs4_ol_stateid *ols)
{
 if (ols->st_stateowner->so_is_open_owner &&
     !(openowner(ols->st_stateowner)->oo_flags & NFS4_OO_CONFIRMED))
  return nfserr_bad_stateid;
 return nfs_ok;
}
