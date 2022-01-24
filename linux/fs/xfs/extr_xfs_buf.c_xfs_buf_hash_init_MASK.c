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
struct xfs_perag {int /*<<< orphan*/  pag_buf_hash; int /*<<< orphan*/  pag_buf_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_buf_hash_params ; 

int
FUNC2(
	struct xfs_perag	*pag)
{
	FUNC1(&pag->pag_buf_lock);
	return FUNC0(&pag->pag_buf_hash, &xfs_buf_hash_params);
}