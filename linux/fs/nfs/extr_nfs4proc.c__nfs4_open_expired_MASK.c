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
struct nfs_open_context {int /*<<< orphan*/  dentry; } ;
struct nfs4_state {int dummy; } ;
struct nfs4_opendata {int dummy; } ;

/* Variables and functions */
 int ESTALE ; 
 scalar_t__ FUNC0 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  NFS4_OPEN_CLAIM_FH ; 
 int FUNC1 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfs4_opendata*,struct nfs4_state*) ; 
 struct nfs4_opendata* FUNC4 (struct nfs_open_context*,struct nfs4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_opendata*) ; 

__attribute__((used)) static int FUNC6(struct nfs_open_context *ctx, struct nfs4_state *state)
{
	struct nfs4_opendata *opendata;
	int ret;

	opendata = FUNC4(ctx, state,
			NFS4_OPEN_CLAIM_FH);
	if (FUNC0(opendata))
		return FUNC1(opendata);
	ret = FUNC3(opendata, state);
	if (ret == -ESTALE)
		FUNC2(ctx->dentry);
	FUNC5(opendata);
	return ret;
}