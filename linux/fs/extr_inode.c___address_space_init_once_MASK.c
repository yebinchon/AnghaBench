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
struct address_space {int /*<<< orphan*/  i_mmap; int /*<<< orphan*/  private_lock; int /*<<< orphan*/  private_list; int /*<<< orphan*/  i_mmap_rwsem; int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int XA_FLAGS_ACCOUNT ; 
 int XA_FLAGS_LOCK_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct address_space *mapping)
{
	FUNC3(&mapping->i_pages, XA_FLAGS_LOCK_IRQ | XA_FLAGS_ACCOUNT);
	FUNC1(&mapping->i_mmap_rwsem);
	FUNC0(&mapping->private_list);
	FUNC2(&mapping->private_lock);
	mapping->i_mmap = RB_ROOT_CACHED;
}