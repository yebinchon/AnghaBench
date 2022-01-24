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
struct bpf_tunnel_key {int /*<<< orphan*/  tunnel_label; int /*<<< orphan*/ * remote_ipv6; int /*<<< orphan*/  tunnel_id; } ;
struct __sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_TUNINFO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TC_ACT_OK ; 
 int TC_ACT_SHOT ; 
 int FUNC1 (struct __sk_buff*,struct bpf_tunnel_key*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct __sk_buff *skb)
{
	char fmt[] = "key %d remote ip6 ::%x label %x\n";
	struct bpf_tunnel_key key;
	int ret;

	ret = FUNC1(skb, &key, sizeof(key),
				     BPF_F_TUNINFO_IPV6);
	if (ret < 0) {
		FUNC0(ret);
		return TC_ACT_SHOT;
	}

	FUNC2(fmt, sizeof(fmt),
			 key.tunnel_id, key.remote_ipv6[3], key.tunnel_label);

	return TC_ACT_OK;
}