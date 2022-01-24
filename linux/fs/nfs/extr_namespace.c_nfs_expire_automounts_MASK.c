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
struct work_struct {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct list_head nfs_automount_list ; 
 int /*<<< orphan*/  nfs_automount_task ; 
 int /*<<< orphan*/  nfs_mountpoint_expiry_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct work_struct *work)
{
	struct list_head *list = &nfs_automount_list;

	FUNC1(list);
	if (!FUNC0(list))
		FUNC2(&nfs_automount_task, nfs_mountpoint_expiry_timeout);
}