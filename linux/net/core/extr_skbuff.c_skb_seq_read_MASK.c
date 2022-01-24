#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct skb_seq_state {unsigned int lower_offset; unsigned int upper_offset; unsigned int stepped_offset; size_t frag_idx; TYPE_2__* cur_skb; TYPE_2__* root_skb; int /*<<< orphan*/ * frag_data; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {size_t nr_frags; TYPE_2__* frag_list; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 unsigned int FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int) ; 

unsigned int FUNC9(unsigned int consumed, const u8 **data,
			  struct skb_seq_state *st)
{
	unsigned int block_limit, abs_offset = consumed + st->lower_offset;
	skb_frag_t *frag;

	if (FUNC8(abs_offset >= st->upper_offset)) {
		if (st->frag_data) {
			FUNC1(st->frag_data);
			st->frag_data = NULL;
		}
		return 0;
	}

next_skb:
	block_limit = FUNC6(st->cur_skb) + st->stepped_offset;

	if (abs_offset < block_limit && !st->frag_data) {
		*data = st->cur_skb->data + (abs_offset - st->stepped_offset);
		return block_limit - abs_offset;
	}

	if (st->frag_idx == 0 && !st->frag_data)
		st->stepped_offset += FUNC6(st->cur_skb);

	while (st->frag_idx < FUNC7(st->cur_skb)->nr_frags) {
		frag = &FUNC7(st->cur_skb)->frags[st->frag_idx];
		block_limit = FUNC4(frag) + st->stepped_offset;

		if (abs_offset < block_limit) {
			if (!st->frag_data)
				st->frag_data = FUNC0(FUNC3(frag));

			*data = (u8 *) st->frag_data + FUNC2(frag) +
				(abs_offset - st->stepped_offset);

			return block_limit - abs_offset;
		}

		if (st->frag_data) {
			FUNC1(st->frag_data);
			st->frag_data = NULL;
		}

		st->frag_idx++;
		st->stepped_offset += FUNC4(frag);
	}

	if (st->frag_data) {
		FUNC1(st->frag_data);
		st->frag_data = NULL;
	}

	if (st->root_skb == st->cur_skb && FUNC5(st->root_skb)) {
		st->cur_skb = FUNC7(st->root_skb)->frag_list;
		st->frag_idx = 0;
		goto next_skb;
	} else if (st->cur_skb->next) {
		st->cur_skb = st->cur_skb->next;
		st->frag_idx = 0;
		goto next_skb;
	}

	return 0;
}