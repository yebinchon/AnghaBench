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
struct nfs_direct_req {int dummy; } ;
struct nfs_commit_data {int /*<<< orphan*/  verf; int /*<<< orphan*/  ds_commit_index; int /*<<< orphan*/  ds_clp; } ;

/* Variables and functions */
 int FUNC0 (struct nfs_writeverf*,int /*<<< orphan*/ *) ; 
 struct nfs_writeverf* FUNC1 (struct nfs_direct_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nfs_direct_req *dreq,
					   struct nfs_commit_data *data)
{
	struct nfs_writeverf *verfp;

	verfp = FUNC1(dreq, data->ds_clp,
					 data->ds_commit_index);

	/* verifier not set so always fail */
	if (verfp->committed < 0)
		return 1;

	return FUNC0(verfp, &data->verf);
}