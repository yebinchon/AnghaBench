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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct tls_record_info {int /*<<< orphan*/ * frags; } ;
struct tls_offload_context_tx {int /*<<< orphan*/  lock; } ;
struct sk_buff {int len; } ;
struct scatterlist {int length; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct scatterlist*,int,int) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 struct tls_record_info* FUNC12 (struct tls_offload_context_tx*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct tls_record_info*) ; 
 int FUNC14 (struct tls_record_info*) ; 

__attribute__((used)) static int FUNC15(struct scatterlist *sg_in,
		      struct sk_buff *skb,
		      struct tls_offload_context_tx *ctx,
		      u64 *rcd_sn,
		      s32 *sync_size,
		      int *resync_sgs)
{
	int tcp_payload_offset = FUNC7(skb) + FUNC11(skb);
	int payload_len = skb->len - tcp_payload_offset;
	u32 tcp_seq = FUNC1(FUNC10(skb)->seq);
	struct tls_record_info *record;
	unsigned long flags;
	int remaining;
	int i;

	FUNC8(&ctx->lock, flags);
	record = FUNC12(ctx, tcp_seq, rcd_sn);
	if (!record) {
		FUNC9(&ctx->lock, flags);
		return -EINVAL;
	}

	*sync_size = tcp_seq - FUNC14(record);
	if (*sync_size < 0) {
		int is_start_marker = FUNC13(record);

		FUNC9(&ctx->lock, flags);
		/* This should only occur if the relevant record was
		 * already acked. In that case it should be ok
		 * to drop the packet and avoid retransmission.
		 *
		 * There is a corner case where the packet contains
		 * both an acked and a non-acked record.
		 * We currently don't handle that case and rely
		 * on TCP to retranmit a packet that doesn't contain
		 * already acked payload.
		 */
		if (!is_start_marker)
			*sync_size = 0;
		return -EINVAL;
	}

	remaining = *sync_size;
	for (i = 0; remaining > 0; i++) {
		skb_frag_t *frag = &record->frags[i];

		FUNC0(frag);
		FUNC2(sg_in + i, FUNC4(frag),
			    FUNC5(frag), FUNC3(frag));

		remaining -= FUNC5(frag);

		if (remaining < 0)
			sg_in[i].length += remaining;
	}
	*resync_sgs = i;

	FUNC9(&ctx->lock, flags);
	if (FUNC6(skb, &sg_in[i], tcp_payload_offset, payload_len) < 0)
		return -EINVAL;

	return 0;
}