
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int dummy; } ;
struct nfsd4_blocked_lock {int nbl_cb; int nbl_lock; int nbl_fh; } ;
struct TYPE_2__ {int so_client; } ;
struct nfs4_lockowner {TYPE_1__ lo_owner; } ;
struct knfsd_fh {int dummy; } ;


 int GFP_KERNEL ;
 int NFSPROC4_CLNT_CB_NOTIFY_LOCK ;
 int fh_copy_shallow (int *,struct knfsd_fh*) ;
 struct nfsd4_blocked_lock* find_blocked_lock (struct nfs4_lockowner*,struct knfsd_fh*,struct nfsd_net*) ;
 struct nfsd4_blocked_lock* kmalloc (int,int ) ;
 int locks_init_lock (int *) ;
 int nfsd4_cb_notify_lock_ops ;
 int nfsd4_init_cb (int *,int ,int *,int ) ;

__attribute__((used)) static struct nfsd4_blocked_lock *
find_or_allocate_block(struct nfs4_lockowner *lo, struct knfsd_fh *fh,
   struct nfsd_net *nn)
{
 struct nfsd4_blocked_lock *nbl;

 nbl = find_blocked_lock(lo, fh, nn);
 if (!nbl) {
  nbl= kmalloc(sizeof(*nbl), GFP_KERNEL);
  if (nbl) {
   fh_copy_shallow(&nbl->nbl_fh, fh);
   locks_init_lock(&nbl->nbl_lock);
   nfsd4_init_cb(&nbl->nbl_cb, lo->lo_owner.so_client,
     &nfsd4_cb_notify_lock_ops,
     NFSPROC4_CLNT_CB_NOTIFY_LOCK);
  }
 }
 return nbl;
}
