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
struct rb_node {int dummy; } ;
struct sk_buff {int truesize; scalar_t__ ip_summed; int /*<<< orphan*/  tstamp; int /*<<< orphan*/ * prev; struct sk_buff* next; scalar_t__ len; int /*<<< orphan*/  data_len; int /*<<< orphan*/ * sk; struct rb_node rbnode; int /*<<< orphan*/  csum; scalar_t__ data; } ;
struct inet_frag_queue {int /*<<< orphan*/  stamp; int /*<<< orphan*/  fqdir; int /*<<< orphan*/  rb_fragments; } ;
struct TYPE_2__ {struct sk_buff* next_frag; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 scalar_t__ CHECKSUM_NONE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rb_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rb_node*,int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC5 (struct rb_node*) ; 
 struct sk_buff* FUNC6 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct sk_buff*,struct sk_buff*,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

void FUNC12(struct inet_frag_queue *q, struct sk_buff *head,
			    void *reasm_data, bool try_coalesce)
{
	struct sk_buff **nextp = (struct sk_buff **)reasm_data;
	struct rb_node *rbn;
	struct sk_buff *fp;
	int sum_truesize;

	FUNC9(head, head->data - FUNC8(head));

	/* Traverse the tree in order, to build frag_list. */
	fp = FUNC0(head)->next_frag;
	rbn = FUNC5(&head->rbnode);
	FUNC4(&head->rbnode, &q->rb_fragments);

	sum_truesize = head->truesize;
	while (rbn || fp) {
		/* fp points to the next sk_buff in the current run;
		 * rbn points to the next run.
		 */
		/* Go through the current run. */
		while (fp) {
			struct sk_buff *next_frag = FUNC0(fp)->next_frag;
			bool stolen;
			int delta;

			sum_truesize += fp->truesize;
			if (head->ip_summed != fp->ip_summed)
				head->ip_summed = CHECKSUM_NONE;
			else if (head->ip_summed == CHECKSUM_COMPLETE)
				head->csum = FUNC1(head->csum, fp->csum);

			if (try_coalesce && FUNC10(head, fp, &stolen,
							     &delta)) {
				FUNC2(fp, stolen);
			} else {
				fp->prev = NULL;
				FUNC3(&fp->rbnode, 0, sizeof(fp->rbnode));
				fp->sk = NULL;

				head->data_len += fp->len;
				head->len += fp->len;
				head->truesize += fp->truesize;

				*nextp = fp;
				nextp = &fp->next;
			}

			fp = next_frag;
		}
		/* Move to the next run. */
		if (rbn) {
			struct rb_node *rbnext = FUNC5(rbn);

			fp = FUNC6(rbn);
			FUNC4(rbn, &q->rb_fragments);
			rbn = rbnext;
		}
	}
	FUNC11(q->fqdir, sum_truesize);

	*nextp = NULL;
	FUNC7(head);
	head->prev = NULL;
	head->tstamp = q->stamp;
}