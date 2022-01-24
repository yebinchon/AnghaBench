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
struct tls_sw_context_rx {char control; } ;
struct tls_prot_info {int prepend_size; size_t tag_size; scalar_t__ version; size_t tail_size; scalar_t__ iv_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct strparser {int /*<<< orphan*/  sk; } ;
struct strp_msg {scalar_t__ offset; } ;
struct sk_buff {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_2__ {scalar_t__ seq; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int MAX_IV_SIZE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 char TLS_1_2_VERSION_MAJOR ; 
 char TLS_1_2_VERSION_MINOR ; 
 scalar_t__ TLS_1_3_VERSION ; 
 int TLS_HEADER_SIZE ; 
 size_t TLS_MAX_PAYLOAD_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,scalar_t__,char*,int) ; 
 struct strp_msg* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct tls_context* FUNC6 (int /*<<< orphan*/ ) ; 
 struct tls_sw_context_rx* FUNC7 (struct tls_context*) ; 

__attribute__((used)) static int FUNC8(struct strparser *strp, struct sk_buff *skb)
{
	struct tls_context *tls_ctx = FUNC6(strp->sk);
	struct tls_sw_context_rx *ctx = FUNC7(tls_ctx);
	struct tls_prot_info *prot = &tls_ctx->prot_info;
	char header[TLS_HEADER_SIZE + MAX_IV_SIZE];
	struct strp_msg *rxm = FUNC3(skb);
	size_t cipher_overhead;
	size_t data_len = 0;
	int ret;

	/* Verify that we have a full TLS header, or wait for more data */
	if (rxm->offset + prot->prepend_size > skb->len)
		return 0;

	/* Sanity-check size of on-stack buffer. */
	if (FUNC1(prot->prepend_size > sizeof(header))) {
		ret = -EINVAL;
		goto read_failure;
	}

	/* Linearize header to local buffer */
	ret = FUNC2(skb, rxm->offset, header, prot->prepend_size);

	if (ret < 0)
		goto read_failure;

	ctx->control = header[0];

	data_len = ((header[4] & 0xFF) | (header[3] << 8));

	cipher_overhead = prot->tag_size;
	if (prot->version != TLS_1_3_VERSION)
		cipher_overhead += prot->iv_size;

	if (data_len > TLS_MAX_PAYLOAD_SIZE + cipher_overhead +
	    prot->tail_size) {
		ret = -EMSGSIZE;
		goto read_failure;
	}
	if (data_len < cipher_overhead) {
		ret = -EBADMSG;
		goto read_failure;
	}

	/* Note that both TLS1.3 and TLS1.2 use TLS_1_2 version here */
	if (header[1] != TLS_1_2_VERSION_MINOR ||
	    header[2] != TLS_1_2_VERSION_MAJOR) {
		ret = -EINVAL;
		goto read_failure;
	}

	FUNC4(strp->sk, data_len + TLS_HEADER_SIZE,
				     FUNC0(skb)->seq + rxm->offset);
	return data_len + TLS_HEADER_SIZE;

read_failure:
	FUNC5(strp->sk, ret);

	return ret;
}