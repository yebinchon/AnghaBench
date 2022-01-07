
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_refcount; int rc_blockcount; int rc_startblock; } ;
union xfs_btree_rec {TYPE_1__ refc; } ;
struct xfs_refcount_irec {void* rc_refcount; void* rc_blockcount; void* rc_startblock; } ;


 void* be32_to_cpu (int ) ;

void
xfs_refcount_btrec_to_irec(
 union xfs_btree_rec *rec,
 struct xfs_refcount_irec *irec)
{
 irec->rc_startblock = be32_to_cpu(rec->refc.rc_startblock);
 irec->rc_blockcount = be32_to_cpu(rec->refc.rc_blockcount);
 irec->rc_refcount = be32_to_cpu(rec->refc.rc_refcount);
}
