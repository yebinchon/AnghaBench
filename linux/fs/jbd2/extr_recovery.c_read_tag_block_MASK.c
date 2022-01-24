#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_3__ {int /*<<< orphan*/  t_blocknr_high; int /*<<< orphan*/  t_blocknr; } ;
typedef  TYPE_1__ journal_block_tag_t ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned long long FUNC2(journal_t *journal,
						journal_block_tag_t *tag)
{
	unsigned long long block = FUNC0(tag->t_blocknr);
	if (FUNC1(journal))
		block |= (u64)FUNC0(tag->t_blocknr_high) << 32;
	return block;
}