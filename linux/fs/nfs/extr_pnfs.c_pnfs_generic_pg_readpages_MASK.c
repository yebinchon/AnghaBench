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
struct nfs_pgio_header {int /*<<< orphan*/  lseg; } ;
struct nfs_pageio_descriptor {int pg_error; int /*<<< orphan*/  pg_lseg; int /*<<< orphan*/  pg_rw_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 
 struct nfs_pgio_header* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pnfs_readhdr_free ; 

int
FUNC5(struct nfs_pageio_descriptor *desc)
{
	struct nfs_pgio_header *hdr;
	int ret;

	hdr = FUNC2(desc->pg_rw_ops);
	if (!hdr) {
		desc->pg_error = -ENOMEM;
		return desc->pg_error;
	}
	FUNC1(desc, hdr, pnfs_readhdr_free);
	hdr->lseg = FUNC4(desc->pg_lseg);
	ret = FUNC0(desc, hdr);
	if (!ret)
		FUNC3(desc, hdr);
	return ret;
}