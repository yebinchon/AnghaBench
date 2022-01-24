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
struct nfs4_change_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct nfs4_change_info*,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct inode *dir, struct nfs4_change_info *cinfo,
		unsigned long timestamp, unsigned long cache_validity)
{
	FUNC0(&dir->i_lock);
	FUNC2(dir, cinfo, timestamp, cache_validity);
	FUNC1(&dir->i_lock);
}