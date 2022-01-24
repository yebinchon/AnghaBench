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
struct rpc_call_ops {int dummy; } ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_pgio_mirror {int pg_recoalesce; int /*<<< orphan*/  pg_list; } ;
struct nfs_pgio_header {TYPE_1__* mds_ops; int /*<<< orphan*/  pages; int /*<<< orphan*/  flags; } ;
struct nfs_pageio_descriptor {struct pnfs_layout_segment* pg_lseg; struct rpc_call_ops* pg_rpc_callops; } ;
typedef  enum pnfs_try_status { ____Placeholder_pnfs_try_status } pnfs_try_status ;
struct TYPE_2__ {int /*<<< orphan*/  (* rpc_release ) (struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
#define  PNFS_ATTEMPTED 130 
#define  PNFS_NOT_ATTEMPTED 129 
#define  PNFS_TRY_AGAIN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs_pgio_mirror* FUNC1 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int FUNC3 (struct nfs_pgio_header*,struct rpc_call_ops const*,struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct nfs_pageio_descriptor *desc, struct nfs_pgio_header *hdr)
{
	const struct rpc_call_ops *call_ops = desc->pg_rpc_callops;
	struct pnfs_layout_segment *lseg = desc->pg_lseg;
	enum pnfs_try_status trypnfs;

	trypnfs = FUNC3(hdr, call_ops, lseg);
	switch (trypnfs) {
	case PNFS_NOT_ATTEMPTED:
		FUNC2(desc, hdr);
	case PNFS_ATTEMPTED:
		break;
	case PNFS_TRY_AGAIN:
		/* cleanup hdr and prepare to redo pnfs */
		if (!FUNC5(NFS_IOHDR_REDO, &hdr->flags)) {
			struct nfs_pgio_mirror *mirror = FUNC1(desc);
			FUNC0(&hdr->pages, &mirror->pg_list);
			mirror->pg_recoalesce = 1;
		}
		hdr->mds_ops->rpc_release(hdr);
	}
}