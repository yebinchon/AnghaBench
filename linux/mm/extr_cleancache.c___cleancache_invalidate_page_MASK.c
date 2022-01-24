#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct cleancache_filekey {TYPE_2__ u; } ;
struct address_space {TYPE_4__* host; } ;
struct TYPE_8__ {TYPE_1__* i_sb; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* invalidate_page ) (int,struct cleancache_filekey,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int cleancache_poolid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct page*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,struct cleancache_filekey*) ; 
 int /*<<< orphan*/  cleancache_invalidates ; 
 TYPE_3__* cleancache_ops ; 
 int /*<<< orphan*/  FUNC3 (int,struct cleancache_filekey,int /*<<< orphan*/ ) ; 

void FUNC4(struct address_space *mapping,
					struct page *page)
{
	/* careful... page->mapping is NULL sometimes when this is called */
	int pool_id = mapping->host->i_sb->cleancache_poolid;
	struct cleancache_filekey key = { .u.key = 0 };

	if (!cleancache_ops)
		return;

	if (pool_id >= 0) {
		FUNC1(!FUNC0(page), page);
		if (FUNC2(mapping->host, &key) >= 0) {
			cleancache_ops->invalidate_page(pool_id,
					key, page->index);
			cleancache_invalidates++;
		}
	}
}