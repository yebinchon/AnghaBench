
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; } ;
struct nfsd_file {int nf_flags; int nf_file; scalar_t__ nf_mark; int nf_node; int nf_lru; int nf_ref; int nf_rcu; } ;
struct net {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_ino; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int nfb_lock; int nfb_count; int nfb_maxcount; int nfb_head; } ;


 int NFSD_FILE_BREAK_READ ;
 int NFSD_FILE_BREAK_WRITE ;
 int NFSD_FILE_HASHED ;
 int NFSD_FILE_HASH_BITS ;
 int NFSD_FILE_PENDING ;
 unsigned int NFSD_MAY_NOT_BREAK_LEASE ;
 unsigned int NFSD_MAY_OWNER_OVERRIDE ;
 unsigned int NFSD_MAY_WRITE ;
 struct net* SVC_NET (struct svc_rqst*) ;
 int S_IFREG ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_bit (int ,int *) ;
 int atomic_inc (int *) ;
 int atomic_long_inc (int *) ;
 int clear_bit (int ,int *) ;
 int clear_bit_unlock (int ,int *) ;
 struct inode* d_inode (int ) ;
 scalar_t__ fh_verify (struct svc_rqst*,struct svc_fh*,int ,unsigned int) ;
 int file_inode (int ) ;
 scalar_t__ hash_long (int ,int ) ;
 int hlist_add_head_rcu (int *,int *) ;
 int list_lru_add (int *,int *) ;
 int max (int ,int ) ;
 scalar_t__ nfs_ok ;
 struct nfsd_file* nfsd_file_alloc (struct inode*,unsigned int,unsigned int,struct net*) ;
 int nfsd_file_cache_hits ;
 struct nfsd_file* nfsd_file_find_locked (struct inode*,unsigned int,unsigned int,struct net*) ;
 TYPE_1__* nfsd_file_hashtbl ;
 int nfsd_file_lru ;
 scalar_t__ nfsd_file_mark_find_or_create (struct nfsd_file*) ;
 int nfsd_file_put (struct nfsd_file*) ;
 int nfsd_file_put_noref (struct nfsd_file*) ;
 int nfsd_file_slab_free (int *) ;
 int nfsd_file_unhash (struct nfsd_file*) ;
 int nfsd_filecache_count ;
 int nfsd_open_break_lease (int ,unsigned int) ;
 scalar_t__ nfsd_open_verified (struct svc_rqst*,struct svc_fh*,int ,unsigned int,int *) ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserrno (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_mb__after_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int this_cpu_inc (int ) ;
 int trace_nfsd_file_acquire (struct svc_rqst*,unsigned int,struct inode*,unsigned int,struct nfsd_file*,scalar_t__) ;
 int wait_on_bit (int *,int ,int ) ;
 int wake_up_bit (int *,int ) ;

__be32
nfsd_file_acquire(struct svc_rqst *rqstp, struct svc_fh *fhp,
    unsigned int may_flags, struct nfsd_file **pnf)
{
 __be32 status;
 struct net *net = SVC_NET(rqstp);
 struct nfsd_file *nf, *new;
 struct inode *inode;
 unsigned int hashval;


 status = fh_verify(rqstp, fhp, S_IFREG,
    may_flags|NFSD_MAY_OWNER_OVERRIDE);
 if (status != nfs_ok)
  return status;

 inode = d_inode(fhp->fh_dentry);
 hashval = (unsigned int)hash_long(inode->i_ino, NFSD_FILE_HASH_BITS);
retry:
 rcu_read_lock();
 nf = nfsd_file_find_locked(inode, may_flags, hashval, net);
 rcu_read_unlock();
 if (nf)
  goto wait_for_construction;

 new = nfsd_file_alloc(inode, may_flags, hashval, net);
 if (!new) {
  trace_nfsd_file_acquire(rqstp, hashval, inode, may_flags,
     ((void*)0), nfserr_jukebox);
  return nfserr_jukebox;
 }

 spin_lock(&nfsd_file_hashtbl[hashval].nfb_lock);
 nf = nfsd_file_find_locked(inode, may_flags, hashval, net);
 if (nf == ((void*)0))
  goto open_file;
 spin_unlock(&nfsd_file_hashtbl[hashval].nfb_lock);
 nfsd_file_slab_free(&new->nf_rcu);

wait_for_construction:
 wait_on_bit(&nf->nf_flags, NFSD_FILE_PENDING, TASK_UNINTERRUPTIBLE);


 if (!test_bit(NFSD_FILE_HASHED, &nf->nf_flags)) {
  nfsd_file_put_noref(nf);
  goto retry;
 }

 this_cpu_inc(nfsd_file_cache_hits);

 if (!(may_flags & NFSD_MAY_NOT_BREAK_LEASE)) {
  bool write = (may_flags & NFSD_MAY_WRITE);

  if (test_bit(NFSD_FILE_BREAK_READ, &nf->nf_flags) ||
      (test_bit(NFSD_FILE_BREAK_WRITE, &nf->nf_flags) && write)) {
   status = nfserrno(nfsd_open_break_lease(
     file_inode(nf->nf_file), may_flags));
   if (status == nfs_ok) {
    clear_bit(NFSD_FILE_BREAK_READ, &nf->nf_flags);
    if (write)
     clear_bit(NFSD_FILE_BREAK_WRITE,
        &nf->nf_flags);
   }
  }
 }
out:
 if (status == nfs_ok) {
  *pnf = nf;
 } else {
  nfsd_file_put(nf);
  nf = ((void*)0);
 }

 trace_nfsd_file_acquire(rqstp, hashval, inode, may_flags, nf, status);
 return status;
open_file:
 nf = new;

 atomic_inc(&nf->nf_ref);
 __set_bit(NFSD_FILE_HASHED, &nf->nf_flags);
 __set_bit(NFSD_FILE_PENDING, &nf->nf_flags);
 list_lru_add(&nfsd_file_lru, &nf->nf_lru);
 hlist_add_head_rcu(&nf->nf_node, &nfsd_file_hashtbl[hashval].nfb_head);
 ++nfsd_file_hashtbl[hashval].nfb_count;
 nfsd_file_hashtbl[hashval].nfb_maxcount = max(nfsd_file_hashtbl[hashval].nfb_maxcount,
   nfsd_file_hashtbl[hashval].nfb_count);
 spin_unlock(&nfsd_file_hashtbl[hashval].nfb_lock);
 atomic_long_inc(&nfsd_filecache_count);

 nf->nf_mark = nfsd_file_mark_find_or_create(nf);
 if (nf->nf_mark)
  status = nfsd_open_verified(rqstp, fhp, S_IFREG,
    may_flags, &nf->nf_file);
 else
  status = nfserr_jukebox;




 if (status != nfs_ok || inode->i_nlink == 0) {
  bool do_free;
  spin_lock(&nfsd_file_hashtbl[hashval].nfb_lock);
  do_free = nfsd_file_unhash(nf);
  spin_unlock(&nfsd_file_hashtbl[hashval].nfb_lock);
  if (do_free)
   nfsd_file_put_noref(nf);
 }
 clear_bit_unlock(NFSD_FILE_PENDING, &nf->nf_flags);
 smp_mb__after_atomic();
 wake_up_bit(&nf->nf_flags, NFSD_FILE_PENDING);
 goto out;
}
