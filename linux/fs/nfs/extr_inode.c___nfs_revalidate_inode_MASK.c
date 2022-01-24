#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {int dummy; } ;
struct nfs_inode {int cache_validity; int /*<<< orphan*/  flags; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int (* getattr ) (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*,struct nfs4_label*,struct inode*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfs4_label*) ; 
 int /*<<< orphan*/  NFSIOS_INODEREVALIDATE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct nfs_inode* FUNC3 (struct inode*) ; 
 int NFS_INO_INVALID_ACL ; 
 int /*<<< orphan*/  NFS_INO_STALE ; 
 TYPE_2__* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int FUNC7 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,...) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 struct nfs4_label* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs4_label*) ; 
 struct nfs_fattr* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*,struct nfs4_label*,struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int) ; 

int
FUNC26(struct nfs_server *server, struct inode *inode)
{
	int		 status = -ESTALE;
	struct nfs4_label *label = NULL;
	struct nfs_fattr *fattr = NULL;
	struct nfs_inode *nfsi = FUNC3(inode);

	FUNC10(PAGECACHE, "NFS: revalidating (%s/%Lu)\n",
		inode->i_sb->s_id, (unsigned long long)FUNC2(inode));

	FUNC24(inode);

	if (FUNC11(inode))
		goto out;
	if (FUNC6(inode))
		goto out;

	/* pNFS: Attributes aren't updated until we layoutcommit */
	if (FUNC9(inode->i_mode)) {
		status = FUNC21(inode, false);
		if (status)
			goto out;
	}

	status = -ENOMEM;
	fattr = FUNC14();
	if (fattr == NULL)
		goto out;

	FUNC16(inode, NFSIOS_INODEREVALIDATE);

	label = FUNC12(FUNC5(inode), GFP_KERNEL);
	if (FUNC0(label)) {
		status = FUNC7(label);
		goto out;
	}

	status = FUNC4(inode)->getattr(server, FUNC1(inode), fattr,
			label, inode);
	if (status != 0) {
		FUNC10(PAGECACHE, "nfs_revalidate_inode: (%s/%Lu) getattr failed, error=%d\n",
			 inode->i_sb->s_id,
			 (unsigned long long)FUNC2(inode), status);
		if (status == -ESTALE) {
			FUNC20(inode);
			if (!FUNC8(inode->i_mode))
				FUNC22(NFS_INO_STALE, &FUNC3(inode)->flags);
		}
		goto err_out;
	}

	status = FUNC17(inode, fattr);
	if (status) {
		FUNC10(PAGECACHE, "nfs_revalidate_inode: (%s/%Lu) refresh failed, error=%d\n",
			 inode->i_sb->s_id,
			 (unsigned long long)FUNC2(inode), status);
		goto err_out;
	}

	if (nfsi->cache_validity & NFS_INO_INVALID_ACL)
		FUNC19(inode);

	FUNC18(inode, fattr, label);

	FUNC10(PAGECACHE, "NFS: (%s/%Lu) revalidation complete\n",
		inode->i_sb->s_id,
		(unsigned long long)FUNC2(inode));

err_out:
	FUNC13(label);
out:
	FUNC15(fattr);
	FUNC25(inode, status);
	return status;
}