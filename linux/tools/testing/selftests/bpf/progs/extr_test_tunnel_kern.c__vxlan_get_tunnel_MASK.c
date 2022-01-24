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
struct vxlan_metadata {int /*<<< orphan*/  gbp; } ;
struct bpf_tunnel_key {int /*<<< orphan*/  remote_ipv4; int /*<<< orphan*/  tunnel_id; } ;
struct __sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  md ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TC_ACT_OK ; 
 int TC_ACT_SHOT ; 
 int FUNC1 (struct __sk_buff*,struct bpf_tunnel_key*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct __sk_buff*,struct vxlan_metadata*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct __sk_buff *skb)
{
	int ret;
	struct bpf_tunnel_key key;
	struct vxlan_metadata md;
	char fmt[] = "key %d remote ip 0x%x vxlan gbp 0x%x\n";

	ret = FUNC1(skb, &key, sizeof(key), 0);
	if (ret < 0) {
		FUNC0(ret);
		return TC_ACT_SHOT;
	}

	ret = FUNC2(skb, &md, sizeof(md));
	if (ret < 0) {
		FUNC0(ret);
		return TC_ACT_SHOT;
	}

	FUNC3(fmt, sizeof(fmt),
			key.tunnel_id, key.remote_ipv4, md.gbp);

	return TC_ACT_OK;
}