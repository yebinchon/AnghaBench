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
struct nfs_access_entry {int /*<<< orphan*/  cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_access_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_access_nr_entries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct nfs_access_entry *entry)
{
	FUNC2(entry->cred);
	FUNC1(entry, rcu_head);
	FUNC4();
	FUNC0(&nfs_access_nr_entries);
	FUNC3();
}