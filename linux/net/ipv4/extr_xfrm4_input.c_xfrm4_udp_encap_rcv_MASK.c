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
typedef  int /*<<< orphan*/  u32 ;
struct udphdr {int dummy; } ;
struct udp_sock {int encap_type; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct iphdr {int ihl; int /*<<< orphan*/  tot_len; } ;
struct ip_esp_hdr {int dummy; } ;
typedef  int __u8 ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_ESP ; 
#define  UDP_ENCAP_ESPINUDP 129 
#define  UDP_ENCAP_ESPINUDP_NON_IKE 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct udphdr* FUNC9 (struct sk_buff*) ; 
 struct udp_sock* FUNC10 (struct sock*) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC12(struct sock *sk, struct sk_buff *skb)
{
	struct udp_sock *up = FUNC10(sk);
	struct udphdr *uh;
	struct iphdr *iph;
	int iphlen, len;

	__u8 *udpdata;
	__be32 *udpdata32;
	__u16 encap_type = up->encap_type;

	/* if this is not encapsulated socket, then just return now */
	if (!encap_type)
		return 1;

	/* If this is a paged skb, make sure we pull up
	 * whatever data we need to look at. */
	len = skb->len - sizeof(struct udphdr);
	if (!FUNC6(skb, sizeof(struct udphdr) + FUNC4(len, 8)))
		return 1;

	/* Now we can get the pointers */
	uh = FUNC9(skb);
	udpdata = (__u8 *)uh + sizeof(struct udphdr);
	udpdata32 = (__be32 *)udpdata;

	switch (encap_type) {
	default:
	case UDP_ENCAP_ESPINUDP:
		/* Check if this is a keepalive packet.  If so, eat it. */
		if (len == 1 && udpdata[0] == 0xff) {
			goto drop;
		} else if (len > sizeof(struct ip_esp_hdr) && udpdata32[0] != 0) {
			/* ESP Packet without Non-ESP header */
			len = sizeof(struct udphdr);
		} else
			/* Must be an IKE packet.. pass it through */
			return 1;
		break;
	case UDP_ENCAP_ESPINUDP_NON_IKE:
		/* Check if this is a keepalive packet.  If so, eat it. */
		if (len == 1 && udpdata[0] == 0xff) {
			goto drop;
		} else if (len > 2 * sizeof(u32) + sizeof(struct ip_esp_hdr) &&
			   udpdata32[0] == 0 && udpdata32[1] == 0) {

			/* ESP Packet with Non-IKE marker */
			len = sizeof(struct udphdr) + 2 * sizeof(u32);
		} else
			/* Must be an IKE packet.. pass it through */
			return 1;
		break;
	}

	/* At this point we are sure that this is an ESPinUDP packet,
	 * so we need to remove 'len' bytes from the packet (the UDP
	 * header and optional ESP marker bytes) and then modify the
	 * protocol to ESP, and then call into the transform receiver.
	 */
	if (FUNC8(skb, GFP_ATOMIC))
		goto drop;

	/* Now we can update and verify the packet length... */
	iph = FUNC2(skb);
	iphlen = iph->ihl << 2;
	iph->tot_len = FUNC1(FUNC5(iph->tot_len) - len);
	if (skb->len < iphlen + len) {
		/* packet is too small!?! */
		goto drop;
	}

	/* pull the data buffer up to the ESP header and set the
	 * transport header to point to ESP.  Keep UDP on the stack
	 * for later.
	 */
	FUNC0(skb, len);
	FUNC7(skb);

	/* process ESP */
	return FUNC11(skb, IPPROTO_ESP, 0, encap_type);

drop:
	FUNC3(skb);
	return 0;
}