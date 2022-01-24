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
typedef  int u8 ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct dccp_sock {scalar_t__ dccps_mss_cache; int dccps_sync_scheduled; struct dccp_ackvec* dccps_hc_rx_ackvec; } ;
struct dccp_skb_cb {scalar_t__ dccpd_opt_len; int /*<<< orphan*/  dccpd_seq; int /*<<< orphan*/  dccpd_type; } ;
struct dccp_ackvec {unsigned char* av_buf; int av_buf_head; int* av_buf_nonce; } ;

/* Variables and functions */
 int DCCPAV_MAX_ACKVEC_LEN ; 
 int DCCPAV_MIN_OPTLEN ; 
 int DCCPO_ACK_VECTOR_0 ; 
 scalar_t__ DCCP_MAX_OPT_LEN ; 
 int DCCP_SINGLE_OPT_MAXLEN ; 
 struct dccp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,...) ; 
 int FUNC2 (int const,int) ; 
 int ENOBUFS ; 
 int FUNC3 (struct dccp_ackvec*) ; 
 scalar_t__ FUNC4 (struct dccp_ackvec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dccp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*,int const) ; 
 unsigned char* FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *skb)
{
	struct dccp_sock *dp = FUNC6(sk);
	struct dccp_ackvec *av = dp->dccps_hc_rx_ackvec;
	struct dccp_skb_cb *dcb = FUNC0(skb);
	const u16 buflen = FUNC3(av);
	/* Figure out how many options do we need to represent the ackvec */
	const u8 nr_opts = FUNC2(buflen, DCCP_SINGLE_OPT_MAXLEN);
	u16 len = buflen + 2 * nr_opts;
	u8 i, nonce = 0;
	const unsigned char *tail, *from;
	unsigned char *to;

	if (dcb->dccpd_opt_len + len > DCCP_MAX_OPT_LEN) {
		FUNC1("Lacking space for %u bytes on %s packet\n", len,
			  FUNC5(dcb->dccpd_type));
		return -1;
	}
	/*
	 * Since Ack Vectors are variable-length, we can not always predict
	 * their size. To catch exception cases where the space is running out
	 * on the skb, a separate Sync is scheduled to carry the Ack Vector.
	 */
	if (len > DCCPAV_MIN_OPTLEN &&
	    len + dcb->dccpd_opt_len + skb->len > dp->dccps_mss_cache) {
		FUNC1("No space left for Ack Vector (%u) on skb (%u+%u), "
			  "MPS=%u ==> reduce payload size?\n", len, skb->len,
			  dcb->dccpd_opt_len, dp->dccps_mss_cache);
		dp->dccps_sync_scheduled = 1;
		return 0;
	}
	dcb->dccpd_opt_len += len;

	to   = FUNC8(skb, len);
	len  = buflen;
	from = av->av_buf + av->av_buf_head;
	tail = av->av_buf + DCCPAV_MAX_ACKVEC_LEN;

	for (i = 0; i < nr_opts; ++i) {
		int copylen = len;

		if (len > DCCP_SINGLE_OPT_MAXLEN)
			copylen = DCCP_SINGLE_OPT_MAXLEN;

		/*
		 * RFC 4340, 12.2: Encode the Nonce Echo for this Ack Vector via
		 * its type; ack_nonce is the sum of all individual buf_nonce's.
		 */
		nonce ^= av->av_buf_nonce[i];

		*to++ = DCCPO_ACK_VECTOR_0 + av->av_buf_nonce[i];
		*to++ = copylen + 2;

		/* Check if buf_head wraps */
		if (from + copylen > tail) {
			const u16 tailsize = tail - from;

			FUNC7(to, from, tailsize);
			to	+= tailsize;
			len	-= tailsize;
			copylen	-= tailsize;
			from	= av->av_buf;
		}

		FUNC7(to, from, copylen);
		from += copylen;
		to   += copylen;
		len  -= copylen;
	}
	/*
	 * Each sent Ack Vector is recorded in the list, as per A.2 of RFC 4340.
	 */
	if (FUNC4(av, dcb->dccpd_seq, nonce))
		return -ENOBUFS;
	return 0;
}