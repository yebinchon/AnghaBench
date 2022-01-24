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
struct rcu_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rcu_head*) ; 
 int /*<<< orphan*/  lsm_inode_cache ; 

__attribute__((used)) static void FUNC1(struct rcu_head *head)
{
	/*
	 * The rcu head is at the start of the inode blob
	 */
	FUNC0(lsm_inode_cache, head);
}