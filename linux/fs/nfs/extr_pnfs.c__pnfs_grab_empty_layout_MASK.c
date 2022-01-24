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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_flags; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFS_LAYOUT_FIRST_LAYOUTGET ; 
 int /*<<< orphan*/  NFS_LAYOUT_INVALID_STID ; 
 int /*<<< orphan*/  NFS_LAYOUT_RETURN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pnfs_layout_hdr*) ; 
 struct pnfs_layout_hdr* FUNC3 (struct inode*,struct nfs_open_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pnfs_layout_hdr *
FUNC10(struct inode *ino, struct nfs_open_context *ctx)
{
	struct pnfs_layout_hdr *lo;

	FUNC6(&ino->i_lock);
	lo = FUNC3(ino, ctx, GFP_KERNEL);
	if (!lo)
		goto out_unlock;
	if (!FUNC9(NFS_LAYOUT_INVALID_STID, &lo->plh_flags))
		goto out_unlock;
	if (FUNC9(NFS_LAYOUT_RETURN, &lo->plh_flags))
		goto out_unlock;
	if (FUNC4(lo))
		goto out_unlock;
	if (FUNC8(NFS_LAYOUT_FIRST_LAYOUTGET, &lo->plh_flags))
		goto out_unlock;
	FUNC2(lo);
	FUNC7(&ino->i_lock);
	FUNC1(lo, FUNC0(ino));
	return lo;

out_unlock:
	FUNC7(&ino->i_lock);
	FUNC5(lo);
	return NULL;
}