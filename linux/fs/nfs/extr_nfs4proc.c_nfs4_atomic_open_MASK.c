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
struct nfs4_state {struct inode* inode; } ;
struct nfs4_label {int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct nfs4_state*) ; 
 scalar_t__ FUNC1 (struct nfs4_state*) ; 
 struct nfs4_state* FUNC2 (struct inode*,struct nfs_open_context*,int,struct iattr*,struct nfs4_label*,int*) ; 
 struct nfs4_label* FUNC3 (struct inode*,int /*<<< orphan*/ ,struct iattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_label*) ; 

__attribute__((used)) static struct inode *
FUNC5(struct inode *dir, struct nfs_open_context *ctx,
		int open_flags, struct iattr *attr, int *opened)
{
	struct nfs4_state *state;
	struct nfs4_label l = {0, 0, 0, NULL}, *label = NULL;

	label = FUNC3(dir, ctx->dentry, attr, &l);

	/* Protect against concurrent sillydeletes */
	state = FUNC2(dir, ctx, open_flags, attr, label, opened);

	FUNC4(label);

	if (FUNC1(state))
		return FUNC0(state);
	return state->inode;
}