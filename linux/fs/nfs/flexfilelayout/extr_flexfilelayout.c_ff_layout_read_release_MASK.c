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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *data)
{
	struct nfs_pgio_header *hdr = data;

	FUNC0(&hdr->task, hdr);
	if (FUNC5(NFS_IOHDR_RESEND_PNFS, &hdr->flags)) {
		FUNC2(hdr->lseg);
		FUNC4(hdr);
	} else if (FUNC5(NFS_IOHDR_RESEND_MDS, &hdr->flags))
		FUNC1(hdr);
	FUNC3(data);
}