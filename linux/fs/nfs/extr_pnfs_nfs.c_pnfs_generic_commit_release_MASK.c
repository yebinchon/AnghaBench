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
struct nfs_commit_data {int /*<<< orphan*/  ds_clp; int /*<<< orphan*/  lseg; TYPE_1__* completion_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* completion ) (struct nfs_commit_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_commit_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_data*) ; 

void FUNC4(void *calldata)
{
	struct nfs_commit_data *data = calldata;

	data->completion_ops->completion(data);
	FUNC2(data->lseg);
	FUNC1(data->ds_clp);
	FUNC0(data);
}