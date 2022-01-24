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
struct tcphdr {int dest; } ;
struct ipv6hdr {int nexthdr; } ;
struct bpf_tunnel_key {int tunnel_ttl; void** remote_ipv6; } ;
struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_TUNINFO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TC_ACT_OK ; 
 int TC_ACT_SHOT ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct __sk_buff*,struct bpf_tunnel_key*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct __sk_buff *skb)
{
	struct bpf_tunnel_key key = {};
	void *data = (void *)(long)skb->data;
	struct ipv6hdr *iph = data;
	struct tcphdr *tcp = data + sizeof(*iph);
	void *data_end = (void *)(long)skb->data_end;
	int ret;

	/* single length check */
	if (data + sizeof(*iph) + sizeof(*tcp) > data_end) {
		FUNC0(1);
		return TC_ACT_SHOT;
	}

	key.remote_ipv6[0] = FUNC1(0x2401db00);
	key.tunnel_ttl = 64;

	if (iph->nexthdr == 58 /* NEXTHDR_ICMP */) {
		key.remote_ipv6[3] = FUNC1(1);
	} else {
		if (iph->nexthdr != 6 /* NEXTHDR_TCP */) {
			FUNC0(iph->nexthdr);
			return TC_ACT_SHOT;
		}

		if (tcp->dest == FUNC2(5200)) {
			key.remote_ipv6[3] = FUNC1(1);
		} else if (tcp->dest == FUNC2(5201)) {
			key.remote_ipv6[3] = FUNC1(2);
		} else {
			FUNC0(tcp->dest);
			return TC_ACT_SHOT;
		}
	}

	ret = FUNC3(skb, &key, sizeof(key),
				     BPF_F_TUNINFO_IPV6);
	if (ret < 0) {
		FUNC0(ret);
		return TC_ACT_SHOT;
	}

	return TC_ACT_OK;
}