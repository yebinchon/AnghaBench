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
struct fs_context {int dummy; } ;
struct cgroup_fs_context {int /*<<< orphan*/  ns; struct cgroup_fs_context* release_agent; struct cgroup_fs_context* name; } ;

/* Variables and functions */
 struct cgroup_fs_context* FUNC0 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup_fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fs_context *fc)
{
	struct cgroup_fs_context *ctx = FUNC0(fc);

	FUNC2(ctx->name);
	FUNC2(ctx->release_agent);
	FUNC3(ctx->ns);
	FUNC1(fc);
	FUNC2(ctx);
}