#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  seq ;
struct TYPE_9__ {int j_blocksize; int /*<<< orphan*/  j_csum_seed; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_10__ {scalar_t__ t_checksum; } ;
typedef  TYPE_2__ journal_block_tag_t ;
struct TYPE_11__ {scalar_t__ t_checksum; } ;
typedef  TYPE_3__ journal_block_tag3_t ;
typedef  void __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(journal_t *j, journal_block_tag_t *tag,
				      void *buf, __u32 sequence)
{
	journal_block_tag3_t *tag3 = (journal_block_tag3_t *)tag;
	__u32 csum32;
	__be32 seq;

	if (!FUNC4(j))
		return 1;

	seq = FUNC1(sequence);
	csum32 = FUNC2(j, j->j_csum_seed, (__u8 *)&seq, sizeof(seq));
	csum32 = FUNC2(j, csum32, buf, j->j_blocksize);

	if (FUNC3(j))
		return tag3->t_checksum == FUNC1(csum32);
	else
		return tag->t_checksum == FUNC0(csum32);
}