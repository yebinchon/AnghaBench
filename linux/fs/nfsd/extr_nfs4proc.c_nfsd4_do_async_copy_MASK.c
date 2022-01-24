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
struct nfsd4_copy {int /*<<< orphan*/  cp_cb; int /*<<< orphan*/  cp_clp; int /*<<< orphan*/  fh; int /*<<< orphan*/  nfserr; int /*<<< orphan*/  cp_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFSPROC4_CLNT_CB_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct nfsd4_copy*) ; 
 struct nfsd4_copy* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nfsd4_cb_offload_ops ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd4_copy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *data)
{
	struct nfsd4_copy *copy = (struct nfsd4_copy *)data;
	struct nfsd4_copy *cb_copy;

	copy->nfserr = FUNC3(copy, 0);
	cb_copy = FUNC1(sizeof(struct nfsd4_copy), GFP_KERNEL);
	if (!cb_copy)
		goto out;
	FUNC2(&cb_copy->cp_res, &copy->cp_res, sizeof(copy->cp_res));
	cb_copy->cp_clp = copy->cp_clp;
	cb_copy->nfserr = copy->nfserr;
	FUNC2(&cb_copy->fh, &copy->fh, sizeof(copy->fh));
	FUNC4(&cb_copy->cp_cb, cb_copy->cp_clp,
			&nfsd4_cb_offload_ops, NFSPROC4_CLNT_CB_OFFLOAD);
	FUNC5(&cb_copy->cp_cb);
out:
	FUNC0(copy);
	return 0;
}