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
struct rpc_task {int dummy; } ;
struct nfs_pgio_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC2(struct rpc_task *task, void *data)
{
	struct nfs_pgio_header *hdr = data;

	if (FUNC0(task, hdr))
		return;

	FUNC1(task);
}