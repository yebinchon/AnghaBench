
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfsd4_lock {scalar_t__ lk_new_lock_seqid; int lk_new_owner; } ;
struct TYPE_7__ {int fh_dentry; } ;
struct nfsd4_compound_state {int minorversion; TYPE_3__ current_fh; } ;
struct TYPE_6__ {struct nfs4_client* so_client; } ;
struct nfs4_openowner {TYPE_2__ oo_owner; } ;
struct TYPE_5__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {int st_stateowner; TYPE_1__ st_stid; } ;
struct TYPE_8__ {scalar_t__ so_seqid; } ;
struct nfs4_lockowner {TYPE_4__ lo_owner; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_client {int dummy; } ;
struct inode {int dummy; } ;
typedef int __be32 ;


 struct nfs4_lockowner* alloc_init_lock_stateowner (unsigned int,struct nfs4_client*,struct nfs4_ol_stateid*,struct nfsd4_lock*) ;
 struct inode* d_inode (int ) ;
 struct nfs4_lockowner* find_lockowner_str (struct nfs4_client*,int *) ;
 struct nfs4_ol_stateid* find_or_create_lock_stateid (struct nfs4_lockowner*,struct nfs4_file*,struct inode*,struct nfs4_ol_stateid*,int*) ;
 int nfs4_put_stateowner (TYPE_4__*) ;
 int nfs_ok ;
 int nfserr_bad_seqid ;
 int nfserr_jukebox ;
 struct nfs4_openowner* openowner (int ) ;
 unsigned int ownerstr_hashval (int *) ;

__attribute__((used)) static __be32
lookup_or_create_lock_state(struct nfsd4_compound_state *cstate,
       struct nfs4_ol_stateid *ost,
       struct nfsd4_lock *lock,
       struct nfs4_ol_stateid **plst, bool *new)
{
 __be32 status;
 struct nfs4_file *fi = ost->st_stid.sc_file;
 struct nfs4_openowner *oo = openowner(ost->st_stateowner);
 struct nfs4_client *cl = oo->oo_owner.so_client;
 struct inode *inode = d_inode(cstate->current_fh.fh_dentry);
 struct nfs4_lockowner *lo;
 struct nfs4_ol_stateid *lst;
 unsigned int strhashval;

 lo = find_lockowner_str(cl, &lock->lk_new_owner);
 if (!lo) {
  strhashval = ownerstr_hashval(&lock->lk_new_owner);
  lo = alloc_init_lock_stateowner(strhashval, cl, ost, lock);
  if (lo == ((void*)0))
   return nfserr_jukebox;
 } else {

  status = nfserr_bad_seqid;
  if (!cstate->minorversion &&
      lock->lk_new_lock_seqid != lo->lo_owner.so_seqid)
   goto out;
 }

 lst = find_or_create_lock_stateid(lo, fi, inode, ost, new);
 if (lst == ((void*)0)) {
  status = nfserr_jukebox;
  goto out;
 }

 status = nfs_ok;
 *plst = lst;
out:
 nfs4_put_stateowner(&lo->lo_owner);
 return status;
}
