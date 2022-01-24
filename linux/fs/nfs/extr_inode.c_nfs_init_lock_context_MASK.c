#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfs_lock_context {int /*<<< orphan*/  io_count; int /*<<< orphan*/  list; int /*<<< orphan*/  lockowner; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct nfs_lock_context *l_ctx)
{
	FUNC2(&l_ctx->count, 1);
	l_ctx->lockowner = current->files;
	FUNC0(&l_ctx->list);
	FUNC1(&l_ctx->io_count, 0);
}