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
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  journal_block_tag_t ;
typedef  int /*<<< orphan*/  journal_block_tag3_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

size_t FUNC3(journal_t *journal)
{
	size_t sz;

	if (FUNC2(journal))
		return sizeof(journal_block_tag3_t);

	sz = sizeof(journal_block_tag_t);

	if (FUNC1(journal))
		sz += sizeof(__u16);

	if (FUNC0(journal))
		return sz;
	else
		return sz - sizeof(__u32);
}