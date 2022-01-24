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
struct nfs_pgio_mirror {int pg_recoalesce; int /*<<< orphan*/  pg_list; } ;
struct nfs_pgio_header {TYPE_1__* completion_ops; int /*<<< orphan*/  pages; int /*<<< orphan*/  flags; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* completion ) (struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*) ; 
 struct nfs_pgio_mirror* FUNC2 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfs_pageio_descriptor *desc,
		struct nfs_pgio_header *hdr)
{
	struct nfs_pgio_mirror *mirror = FUNC2(desc);

	if (!FUNC4(NFS_IOHDR_REDO, &hdr->flags)) {
		FUNC0(&hdr->pages, &mirror->pg_list);
		FUNC1(desc);
		mirror->pg_recoalesce = 1;
	}
	hdr->completion_ops->completion(hdr);
}