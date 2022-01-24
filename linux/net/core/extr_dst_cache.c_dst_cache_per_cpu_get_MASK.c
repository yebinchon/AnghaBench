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
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct dst_cache_pcpu {int /*<<< orphan*/  refresh_ts; int /*<<< orphan*/  cookie; struct dst_entry* dst; } ;
struct dst_cache {int /*<<< orphan*/  reset_ts; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_cache_pcpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct dst_entry *FUNC6(struct dst_cache *dst_cache,
					       struct dst_cache_pcpu *idst)
{
	struct dst_entry *dst;

	dst = idst->dst;
	if (!dst)
		goto fail;

	/* the cache already hold a dst reference; it can't go away */
	FUNC1(dst);

	if (FUNC5(!FUNC4(idst->refresh_ts, dst_cache->reset_ts) ||
		     (dst->obsolete && !dst->ops->check(dst, idst->cookie)))) {
		FUNC0(idst, NULL, 0);
		FUNC2(dst);
		goto fail;
	}
	return dst;

fail:
	idst->refresh_ts = jiffies;
	return NULL;
}