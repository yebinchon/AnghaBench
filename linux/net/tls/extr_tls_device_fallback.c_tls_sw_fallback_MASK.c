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
typedef  int /*<<< orphan*/  u64 ;
struct tls_offload_context_tx {int dummy; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct scatterlist {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct scatterlist*,struct sk_buff*,struct tls_offload_context_tx*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct scatterlist* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct tls_context*,struct scatterlist*,struct scatterlist*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 struct tls_context* FUNC13 (struct sock*) ; 
 struct tls_offload_context_tx* FUNC14 (struct tls_context*) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct sock *sk, struct sk_buff *skb)
{
	int tcp_payload_offset = FUNC10(skb) + FUNC11(skb);
	struct tls_context *tls_ctx = FUNC13(sk);
	struct tls_offload_context_tx *ctx = FUNC14(tls_ctx);
	int payload_len = skb->len - tcp_payload_offset;
	struct scatterlist *sg_in, sg_out[3];
	struct sk_buff *nskb = NULL;
	int sg_in_max_elements;
	int resync_sgs = 0;
	s32 sync_size = 0;
	u64 rcd_sn;

	/* worst case is:
	 * MAX_SKB_FRAGS in tls_record_info
	 * MAX_SKB_FRAGS + 1 in SKB head and frags.
	 */
	sg_in_max_elements = 2 * MAX_SKB_FRAGS + 1;

	if (!payload_len)
		return skb;

	sg_in = FUNC5(sg_in_max_elements, sizeof(*sg_in), GFP_ATOMIC);
	if (!sg_in)
		goto free_orig;

	FUNC7(sg_in, sg_in_max_elements);
	FUNC7(sg_out, FUNC0(sg_out));

	if (FUNC2(sg_in, skb, ctx, &rcd_sn, &sync_size, &resync_sgs)) {
		/* bypass packets before kernel TLS socket option was set */
		if (sync_size < 0 && payload_len <= -sync_size)
			nskb = FUNC9(skb);
		goto put_sg;
	}

	nskb = FUNC12(tls_ctx, sg_out, sg_in, skb, sync_size, rcd_sn);

put_sg:
	while (resync_sgs)
		FUNC6(FUNC8(&sg_in[--resync_sgs]));
	FUNC3(sg_in);
free_orig:
	if (nskb)
		FUNC1(skb);
	else
		FUNC4(skb);
	return nskb;
}