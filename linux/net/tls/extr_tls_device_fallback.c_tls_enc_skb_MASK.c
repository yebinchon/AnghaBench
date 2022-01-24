#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct tls_offload_context_tx {int /*<<< orphan*/  aead_send; } ;
struct TYPE_3__ {int /*<<< orphan*/  salt; } ;
struct TYPE_4__ {TYPE_1__ aes_gcm_128; } ;
struct tls_context {TYPE_2__ crypto_send; } ;
struct sk_buff {int len; struct sk_buff* prev; } ;
struct scatterlist {int dummy; } ;
typedef  void aead_request ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TLS_AAD_SPACE_SIZE ; 
 int TLS_CIPHER_AES_GCM_128_IV_SIZE ; 
 int TLS_CIPHER_AES_GCM_128_SALT_SIZE ; 
 int TLS_CIPHER_AES_GCM_128_TAG_SIZE ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,struct tls_context*,struct sk_buff*,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (void*,int /*<<< orphan*/ ,struct scatterlist*,struct scatterlist*,void*,void*,int /*<<< orphan*/ ,int) ; 
 struct tls_offload_context_tx* FUNC13 (struct tls_context*) ; 

__attribute__((used)) static struct sk_buff *FUNC14(struct tls_context *tls_ctx,
				   struct scatterlist sg_out[3],
				   struct scatterlist *sg_in,
				   struct sk_buff *skb,
				   s32 sync_size, u64 rcd_sn)
{
	int tcp_payload_offset = FUNC9(skb) + FUNC10(skb);
	struct tls_offload_context_tx *ctx = FUNC13(tls_ctx);
	int payload_len = skb->len - tcp_payload_offset;
	void *buf, *iv, *aad, *dummy_buf;
	struct aead_request *aead_req;
	struct sk_buff *nskb = NULL;
	int buf_len;

	aead_req = FUNC11(ctx->aead_send, GFP_ATOMIC);
	if (!aead_req)
		return NULL;

	buf_len = TLS_CIPHER_AES_GCM_128_SALT_SIZE +
		  TLS_CIPHER_AES_GCM_128_IV_SIZE +
		  TLS_AAD_SPACE_SIZE +
		  sync_size +
		  TLS_CIPHER_AES_GCM_128_TAG_SIZE;
	buf = FUNC5(buf_len, GFP_ATOMIC);
	if (!buf)
		goto free_req;

	iv = buf;
	FUNC6(iv, tls_ctx->crypto_send.aes_gcm_128.salt,
	       TLS_CIPHER_AES_GCM_128_SALT_SIZE);
	aad = buf + TLS_CIPHER_AES_GCM_128_SALT_SIZE +
	      TLS_CIPHER_AES_GCM_128_IV_SIZE;
	dummy_buf = aad + TLS_AAD_SPACE_SIZE;

	nskb = FUNC0(FUNC7(skb) + skb->len, GFP_ATOMIC);
	if (!nskb)
		goto free_buf;

	FUNC8(nskb, FUNC7(skb));

	FUNC2(sg_out, buf, tls_ctx, nskb, tcp_payload_offset,
		    payload_len, sync_size, dummy_buf);

	if (FUNC12(aead_req, ctx->aead_send, sg_in, sg_out, aad, iv,
			    rcd_sn, sync_size + payload_len) < 0)
		goto free_nskb;

	FUNC1(nskb, skb, tcp_payload_offset);

	/* validate_xmit_skb_list assumes that if the skb wasn't segmented
	 * nskb->prev will point to the skb itself
	 */
	nskb->prev = nskb;

free_buf:
	FUNC3(buf);
free_req:
	FUNC3(aead_req);
	return nskb;
free_nskb:
	FUNC4(nskb);
	nskb = NULL;
	goto free_buf;
}