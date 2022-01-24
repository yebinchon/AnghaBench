#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd_file {int /*<<< orphan*/  nf_flags; int /*<<< orphan*/  nf_file; scalar_t__ nf_mark; int /*<<< orphan*/  nf_node; int /*<<< orphan*/  nf_lru; int /*<<< orphan*/  nf_ref; int /*<<< orphan*/  nf_rcu; } ;
struct net {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  nfb_lock; int /*<<< orphan*/  nfb_count; int /*<<< orphan*/  nfb_maxcount; int /*<<< orphan*/  nfb_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_FILE_BREAK_READ ; 
 int /*<<< orphan*/  NFSD_FILE_BREAK_WRITE ; 
 int /*<<< orphan*/  NFSD_FILE_HASHED ; 
 int /*<<< orphan*/  NFSD_FILE_HASH_BITS ; 
 int /*<<< orphan*/  NFSD_FILE_PENDING ; 
 unsigned int NFSD_MAY_NOT_BREAK_LEASE ; 
 unsigned int NFSD_MAY_OWNER_OVERRIDE ; 
 unsigned int NFSD_MAY_WRITE ; 
 struct net* FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_ok ; 
 struct nfsd_file* FUNC13 (struct inode*,unsigned int,unsigned int,struct net*) ; 
 int /*<<< orphan*/  nfsd_file_cache_hits ; 
 struct nfsd_file* FUNC14 (struct inode*,unsigned int,unsigned int,struct net*) ; 
 TYPE_1__* nfsd_file_hashtbl ; 
 int /*<<< orphan*/  nfsd_file_lru ; 
 scalar_t__ FUNC15 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC17 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct nfsd_file*) ; 
 int /*<<< orphan*/  nfsd_filecache_count ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC21 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ nfserr_jukebox ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct svc_rqst*,unsigned int,struct inode*,unsigned int,struct nfsd_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__be32
FUNC33(struct svc_rqst *rqstp, struct svc_fh *fhp,
		  unsigned int may_flags, struct nfsd_file **pnf)
{
	__be32	status;
	struct net *net = FUNC0(rqstp);
	struct nfsd_file *nf, *new;
	struct inode *inode;
	unsigned int hashval;

	/* FIXME: skip this if fh_dentry is already set? */
	status = FUNC7(rqstp, fhp, S_IFREG,
				may_flags|NFSD_MAY_OWNER_OVERRIDE);
	if (status != nfs_ok)
		return status;

	inode = FUNC6(fhp->fh_dentry);
	hashval = (unsigned int)FUNC9(inode->i_ino, NFSD_FILE_HASH_BITS);
retry:
	FUNC23();
	nf = FUNC14(inode, may_flags, hashval, net);
	FUNC24();
	if (nf)
		goto wait_for_construction;

	new = FUNC13(inode, may_flags, hashval, net);
	if (!new) {
		FUNC30(rqstp, hashval, inode, may_flags,
					NULL, nfserr_jukebox);
		return nfserr_jukebox;
	}

	FUNC26(&nfsd_file_hashtbl[hashval].nfb_lock);
	nf = FUNC14(inode, may_flags, hashval, net);
	if (nf == NULL)
		goto open_file;
	FUNC27(&nfsd_file_hashtbl[hashval].nfb_lock);
	FUNC18(&new->nf_rcu);

wait_for_construction:
	FUNC31(&nf->nf_flags, NFSD_FILE_PENDING, TASK_UNINTERRUPTIBLE);

	/* Did construction of this file fail? */
	if (!FUNC28(NFSD_FILE_HASHED, &nf->nf_flags)) {
		FUNC17(nf);
		goto retry;
	}

	FUNC29(nfsd_file_cache_hits);

	if (!(may_flags & NFSD_MAY_NOT_BREAK_LEASE)) {
		bool write = (may_flags & NFSD_MAY_WRITE);

		if (FUNC28(NFSD_FILE_BREAK_READ, &nf->nf_flags) ||
		    (FUNC28(NFSD_FILE_BREAK_WRITE, &nf->nf_flags) && write)) {
			status = FUNC22(FUNC20(
					FUNC8(nf->nf_file), may_flags));
			if (status == nfs_ok) {
				FUNC4(NFSD_FILE_BREAK_READ, &nf->nf_flags);
				if (write)
					FUNC4(NFSD_FILE_BREAK_WRITE,
						  &nf->nf_flags);
			}
		}
	}
out:
	if (status == nfs_ok) {
		*pnf = nf;
	} else {
		FUNC16(nf);
		nf = NULL;
	}

	FUNC30(rqstp, hashval, inode, may_flags, nf, status);
	return status;
open_file:
	nf = new;
	/* Take reference for the hashtable */
	FUNC2(&nf->nf_ref);
	FUNC1(NFSD_FILE_HASHED, &nf->nf_flags);
	FUNC1(NFSD_FILE_PENDING, &nf->nf_flags);
	FUNC11(&nfsd_file_lru, &nf->nf_lru);
	FUNC10(&nf->nf_node, &nfsd_file_hashtbl[hashval].nfb_head);
	++nfsd_file_hashtbl[hashval].nfb_count;
	nfsd_file_hashtbl[hashval].nfb_maxcount = FUNC12(nfsd_file_hashtbl[hashval].nfb_maxcount,
			nfsd_file_hashtbl[hashval].nfb_count);
	FUNC27(&nfsd_file_hashtbl[hashval].nfb_lock);
	FUNC3(&nfsd_filecache_count);

	nf->nf_mark = FUNC15(nf);
	if (nf->nf_mark)
		status = FUNC21(rqstp, fhp, S_IFREG,
				may_flags, &nf->nf_file);
	else
		status = nfserr_jukebox;
	/*
	 * If construction failed, or we raced with a call to unlink()
	 * then unhash.
	 */
	if (status != nfs_ok || inode->i_nlink == 0) {
		bool do_free;
		FUNC26(&nfsd_file_hashtbl[hashval].nfb_lock);
		do_free = FUNC19(nf);
		FUNC27(&nfsd_file_hashtbl[hashval].nfb_lock);
		if (do_free)
			FUNC17(nf);
	}
	FUNC5(NFSD_FILE_PENDING, &nf->nf_flags);
	FUNC25();
	FUNC32(&nf->nf_flags, NFSD_FILE_PENDING);
	goto out;
}