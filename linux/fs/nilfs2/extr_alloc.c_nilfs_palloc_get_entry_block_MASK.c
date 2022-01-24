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
struct nilfs_palloc_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  prev_entry; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {struct nilfs_palloc_cache* mi_palloc_cache; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct buffer_head**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct inode *inode, __u64 nr,
				 int create, struct buffer_head **bhp)
{
	struct nilfs_palloc_cache *cache = FUNC0(inode)->mi_palloc_cache;

	return FUNC2(inode,
				      FUNC1(inode, nr),
				      create, NULL, bhp,
				      &cache->prev_entry, &cache->lock);
}