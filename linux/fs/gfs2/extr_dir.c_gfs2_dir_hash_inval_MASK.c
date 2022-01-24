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
struct TYPE_2__ {int /*<<< orphan*/  i_lock; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/ * i_hash_cache; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gfs2_inode *ip)
{
	__be64 *hc;

	FUNC1(&ip->i_inode.i_lock);
	hc = ip->i_hash_cache;
	ip->i_hash_cache = NULL;
	FUNC2(&ip->i_inode.i_lock);

	FUNC0(hc);
}