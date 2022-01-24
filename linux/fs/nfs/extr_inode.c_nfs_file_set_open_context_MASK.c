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
struct nfs_open_context {int /*<<< orphan*/  list; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_open_context*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_open_context*) ; 

void FUNC3(struct file *filp, struct nfs_open_context *ctx)
{
	filp->private_data = FUNC0(ctx);
	if (FUNC1(&ctx->list))
		FUNC2(ctx);
}