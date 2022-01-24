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
struct rhash_lock_head {int dummy; } ;
struct bucket_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rhash_lock_head*) ; 
 scalar_t__ FUNC1 (struct bucket_table const*,unsigned int) ; 

struct rhash_lock_head **FUNC2(const struct bucket_table *tbl,
					   unsigned int hash)
{
	static struct rhash_lock_head *rhnull;

	if (!rhnull)
		FUNC0(rhnull);
	return FUNC1(tbl, hash) ?: &rhnull;
}