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
struct nfs_pgio_header {int /*<<< orphan*/  flags; int /*<<< orphan*/  lseg; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_RESEND_MDS ; 
 int /*<<< orphan*/  NFS_IOHDR_RESEND_PNFS ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_pgio_header*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct nfs_pgio_header *hdr = data;

	FUNC2(&hdr->task, hdr);
	if (FUNC4(NFS_IOHDR_RESEND_PNFS, &hdr->flags)) {
		FUNC1(hdr->lseg);
		FUNC0(hdr, true);
	} else if (FUNC4(NFS_IOHDR_RESEND_MDS, &hdr->flags))
		FUNC0(hdr, false);
	FUNC3(data);
}