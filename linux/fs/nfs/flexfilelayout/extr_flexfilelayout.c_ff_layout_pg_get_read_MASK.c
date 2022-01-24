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
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_error; int /*<<< orphan*/  pg_inode; } ;
struct nfs_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOMODE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nfs_pageio_descriptor *pgio,
		      struct nfs_page *req,
		      bool strict_iomode)
{
	FUNC3(pgio->pg_lseg);
	pgio->pg_lseg = FUNC4(pgio->pg_inode,
					   FUNC2(req),
					   0,
					   NFS4_MAX_UINT64,
					   IOMODE_READ,
					   strict_iomode,
					   GFP_KERNEL);
	if (FUNC0(pgio->pg_lseg)) {
		pgio->pg_error = FUNC1(pgio->pg_lseg);
		pgio->pg_lseg = NULL;
	}
}