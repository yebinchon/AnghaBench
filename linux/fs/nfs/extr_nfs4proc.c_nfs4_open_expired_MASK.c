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
struct nfs_open_context {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct nfs_open_context*) ; 
 int FUNC1 (struct nfs_open_context*,struct nfs4_state*) ; 
 struct nfs_open_context* FUNC2 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 

__attribute__((used)) static int FUNC4(struct nfs4_state_owner *sp, struct nfs4_state *state)
{
	struct nfs_open_context *ctx;
	int ret;

	ctx = FUNC2(state);
	if (FUNC0(ctx))
		return -EAGAIN;
	ret = FUNC1(ctx, state);
	FUNC3(ctx);
	return ret;
}