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
struct nfs_writeverf {scalar_t__ committed; } ;
struct nfs_pgio_header {int /*<<< orphan*/  verf; int /*<<< orphan*/  ds_commit_idx; int /*<<< orphan*/  ds_clp; } ;
struct nfs_direct_req {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfs_writeverf*,int /*<<< orphan*/ *) ; 
 struct nfs_writeverf* FUNC1 (struct nfs_direct_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_direct_req*,struct nfs_pgio_header*) ; 

__attribute__((used)) static int FUNC3(struct nfs_direct_req *dreq,
					  struct nfs_pgio_header *hdr)
{
	struct nfs_writeverf *verfp;

	verfp = FUNC1(dreq, hdr->ds_clp, hdr->ds_commit_idx);
	if (verfp->committed < 0) {
		FUNC2(dreq, hdr);
		return 0;
	}
	return FUNC0(verfp, &hdr->verf);
}