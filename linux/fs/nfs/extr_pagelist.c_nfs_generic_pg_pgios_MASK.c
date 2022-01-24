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
struct nfs_pgio_header {int /*<<< orphan*/  inode; int /*<<< orphan*/  cred; } ;
struct nfs_pageio_descriptor {int pg_error; int /*<<< orphan*/  pg_ioflags; int /*<<< orphan*/  pg_rpc_callops; int /*<<< orphan*/  pg_rw_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfs_pgio_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 
 struct nfs_pgio_header* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_pgio_header_free ; 

__attribute__((used)) static int FUNC6(struct nfs_pageio_descriptor *desc)
{
	struct nfs_pgio_header *hdr;
	int ret;

	hdr = FUNC5(desc->pg_rw_ops);
	if (!hdr) {
		desc->pg_error = -ENOMEM;
		return desc->pg_error;
	}
	FUNC4(desc, hdr, nfs_pgio_header_free);
	ret = FUNC2(desc, hdr);
	if (ret == 0)
		ret = FUNC3(FUNC0(hdr->inode),
					hdr,
					hdr->cred,
					FUNC1(hdr->inode),
					desc->pg_rpc_callops,
					desc->pg_ioflags, 0);
	return ret;
}