#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct fs_context {struct fs_context* source; int /*<<< orphan*/  fs_type; int /*<<< orphan*/  cred; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  net_ns; int /*<<< orphan*/  security; TYPE_1__* ops; scalar_t__ need_free; TYPE_2__* root; } ;
struct TYPE_4__ {struct super_block* d_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (struct fs_context*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fs_context*) ; 

void FUNC10(struct fs_context *fc)
{
	struct super_block *sb;

	if (fc->root) {
		sb = fc->root->d_sb;
		FUNC1(fc->root);
		fc->root = NULL;
		FUNC0(sb);
	}

	if (fc->need_free && fc->ops && fc->ops->free)
		fc->ops->free(fc);

	FUNC8(&fc->security);
	FUNC6(fc->net_ns);
	FUNC7(fc->user_ns);
	FUNC3(fc->cred);
	FUNC4(fc);
	FUNC5(fc->fs_type);
	FUNC2(fc->source);
	FUNC2(fc);
}