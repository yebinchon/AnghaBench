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
struct tls_record_info {int num_frags; size_t len; int /*<<< orphan*/ * frags; } ;
struct tls_offload_context_tx {struct tls_record_info* open_record; } ;
struct page_frag {size_t offset; int /*<<< orphan*/  page; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tls_record_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(struct tls_offload_context_tx *offload_ctx,
				 struct page_frag *pfrag,
				 size_t prepend_size)
{
	struct tls_record_info *record;
	skb_frag_t *frag;

	record = FUNC2(sizeof(*record), GFP_KERNEL);
	if (!record)
		return -ENOMEM;

	frag = &record->frags[0];
	FUNC0(frag, pfrag->page);
	FUNC3(frag, pfrag->offset);
	FUNC4(frag, prepend_size);

	FUNC1(pfrag->page);
	pfrag->offset += prepend_size;

	record->num_frags = 1;
	record->len = prepend_size;
	offload_ctx->open_record = record;
	return 0;
}