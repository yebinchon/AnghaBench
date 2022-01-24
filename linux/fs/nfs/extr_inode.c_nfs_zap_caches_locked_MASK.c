#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfs_inode {int /*<<< orphan*/  cookieverf; int /*<<< orphan*/  attrtimeo_timestamp; int /*<<< orphan*/  attrtimeo; } ;
struct inode {int i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_ATTRINVALIDATE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ACCESS ; 
 int NFS_INO_INVALID_ACL ; 
 int NFS_INO_INVALID_ATTR ; 
 int NFS_INO_INVALID_DATA ; 
 int NFS_INO_REVAL_PAGECACHE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_inode*) ; 

__attribute__((used)) static void FUNC9(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	int mode = inode->i_mode;

	FUNC6(inode, NFSIOS_ATTRINVALIDATE);

	nfsi->attrtimeo = FUNC1(inode);
	nfsi->attrtimeo_timestamp = jiffies;

	FUNC5(FUNC0(inode)->cookieverf, 0, sizeof(FUNC0(inode)->cookieverf));
	if (FUNC4(mode) || FUNC2(mode) || FUNC3(mode)) {
		FUNC7(inode, NFS_INO_INVALID_ATTR
					| NFS_INO_INVALID_DATA
					| NFS_INO_INVALID_ACCESS
					| NFS_INO_INVALID_ACL
					| NFS_INO_REVAL_PAGECACHE);
	} else
		FUNC7(inode, NFS_INO_INVALID_ATTR
					| NFS_INO_INVALID_ACCESS
					| NFS_INO_INVALID_ACL
					| NFS_INO_REVAL_PAGECACHE);
	FUNC8(nfsi);
}