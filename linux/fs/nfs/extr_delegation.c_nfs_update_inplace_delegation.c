
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seqid; } ;
struct nfs_delegation {int type; TYPE_1__ stateid; } ;


 scalar_t__ nfs4_stateid_is_newer (TYPE_1__*,TYPE_1__*) ;
 int smp_wmb () ;

__attribute__((used)) static void
nfs_update_inplace_delegation(struct nfs_delegation *delegation,
  const struct nfs_delegation *update)
{
 if (nfs4_stateid_is_newer(&update->stateid, &delegation->stateid)) {
  delegation->stateid.seqid = update->stateid.seqid;
  smp_wmb();
  delegation->type = update->type;
 }
}
