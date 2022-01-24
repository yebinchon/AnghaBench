#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; TYPE_3__* mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct cleancache_filekey {TYPE_1__ u; } ;
struct TYPE_10__ {TYPE_2__* i_sb; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* put_page ) (int,struct cleancache_filekey,int /*<<< orphan*/ ,struct page*) ;} ;
struct TYPE_8__ {TYPE_5__* host; } ;
struct TYPE_7__ {int cleancache_poolid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct page*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,struct cleancache_filekey*) ; 
 TYPE_4__* cleancache_ops ; 
 int /*<<< orphan*/  cleancache_puts ; 
 int /*<<< orphan*/  FUNC3 (int,struct cleancache_filekey,int /*<<< orphan*/ ,struct page*) ; 

void FUNC4(struct page *page)
{
	int pool_id;
	struct cleancache_filekey key = { .u.key = 0 };

	if (!cleancache_ops) {
		cleancache_puts++;
		return;
	}

	FUNC1(!FUNC0(page), page);
	pool_id = page->mapping->host->i_sb->cleancache_poolid;
	if (pool_id >= 0 &&
		FUNC2(page->mapping->host, &key) >= 0) {
		cleancache_ops->put_page(pool_id, key, page->index, page);
		cleancache_puts++;
	}
}