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
struct page {int dummy; } ;
struct buffer_head {int b_size; int /*<<< orphan*/  b_data; struct page* b_page; } ;
typedef  int /*<<< orphan*/  seq ;
struct TYPE_9__ {int /*<<< orphan*/  j_csum_seed; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_10__ {int /*<<< orphan*/  t_checksum; } ;
typedef  TYPE_2__ journal_block_tag_t ;
struct TYPE_11__ {void* t_checksum; } ;
typedef  TYPE_3__ journal_block_tag3_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(journal_t *j, journal_block_tag_t *tag,
				    struct buffer_head *bh, __u32 sequence)
{
	journal_block_tag3_t *tag3 = (journal_block_tag3_t *)tag;
	struct page *page = bh->b_page;
	__u8 *addr;
	__u32 csum32;
	__be32 seq;

	if (!FUNC4(j))
		return;

	seq = FUNC1(sequence);
	addr = FUNC5(page);
	csum32 = FUNC2(j, j->j_csum_seed, (__u8 *)&seq, sizeof(seq));
	csum32 = FUNC2(j, csum32, addr + FUNC7(bh->b_data),
			     bh->b_size);
	FUNC6(addr);

	if (FUNC3(j))
		tag3->t_checksum = FUNC1(csum32);
	else
		tag->t_checksum = FUNC0(csum32);
}