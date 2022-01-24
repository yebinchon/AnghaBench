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
struct pnpipehdr {scalar_t__ data0; } ;
struct pep_sock {scalar_t__ rx_fc; scalar_t__ tx_fc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PN_LEGACY_FLOW_CONTROL ; 
#define  PN_PIPE_SB_NEGOTIATED_FC 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 scalar_t__* FUNC1 (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 struct pnpipehdr* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC2(sk);
	struct pnpipehdr *hdr = FUNC3(skb);
	u8 n_sb = hdr->data0;

	pn->rx_fc = pn->tx_fc = PN_LEGACY_FLOW_CONTROL;
	FUNC0(skb, sizeof(*hdr));
	while (n_sb > 0) {
		u8 type, buf[2], len = sizeof(buf);
		u8 *data = FUNC1(skb, &type, &len, buf);

		if (data == NULL)
			return -EINVAL;
		switch (type) {
		case PN_PIPE_SB_NEGOTIATED_FC:
			if (len < 2 || (data[0] | data[1]) > 3)
				break;
			pn->tx_fc = data[0] & 3;
			pn->rx_fc = data[1] & 3;
			break;
		}
		n_sb--;
	}
	return 0;
}