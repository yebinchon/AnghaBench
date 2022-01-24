#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct jbd2_journal_block_tail {scalar_t__ t_checksum; } ;
struct TYPE_5__ {int j_blocksize; int /*<<< orphan*/  j_csum_seed; } ;
typedef  TYPE_1__ journal_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(journal_t *j, void *buf)
{
	struct jbd2_journal_block_tail *tail;
	__be32 provided;
	__u32 calculated;

	if (!FUNC2(j))
		return 1;

	tail = (struct jbd2_journal_block_tail *)(buf + j->j_blocksize -
			sizeof(struct jbd2_journal_block_tail));
	provided = tail->t_checksum;
	tail->t_checksum = 0;
	calculated = FUNC1(j, j->j_csum_seed, buf, j->j_blocksize);
	tail->t_checksum = provided;

	return provided == FUNC0(calculated);
}