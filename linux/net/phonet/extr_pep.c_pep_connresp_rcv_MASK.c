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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ error_code; scalar_t__* data; } ;
struct pep_sock {void* rx_fc; void* tx_fc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EINVAL ; 
 scalar_t__ PN_PIPE_NO_ERROR ; 
#define  PN_PIPE_SB_PREFERRED_FC_RX 129 
#define  PN_PIPE_SB_REQUIRED_FC_TX 128 
 scalar_t__* FUNC0 (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 struct pep_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*) ; 
 void* FUNC3 (scalar_t__ const*,int /*<<< orphan*/ ) ; 
 struct pnpipehdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC1(sk);
	struct pnpipehdr *hdr;
	u8 n_sb;

	if (!FUNC5(skb, sizeof(*hdr) + 4))
		return -EINVAL;

	hdr = FUNC4(skb);
	if (hdr->error_code != PN_PIPE_NO_ERROR)
		return -ECONNREFUSED;

	/* Parse sub-blocks */
	n_sb = hdr->data[3];
	while (n_sb > 0) {
		u8 type, buf[6], len = sizeof(buf);
		const u8 *data = FUNC0(skb, &type, &len, buf);

		if (data == NULL)
			return -EINVAL;

		switch (type) {
		case PN_PIPE_SB_REQUIRED_FC_TX:
			if (len < 2 || len < data[0])
				break;
			pn->tx_fc = FUNC3(data + 2, len - 2);
			break;

		case PN_PIPE_SB_PREFERRED_FC_RX:
			if (len < 2 || len < data[0])
				break;
			pn->rx_fc = FUNC3(data + 2, len - 2);
			break;

		}
		n_sb--;
	}

	return FUNC2(sk);
}