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
typedef  int uint32_t ;
struct __sk_buff {int dummy; } ;

/* Variables and functions */
 int BPF_DROP ; 
 int BPF_OK ; 
 int /*<<< orphan*/  IP_DST_OFF ; 
 int FUNC0 (struct __sk_buff*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (struct __sk_buff*,int,int,int) ; 

int FUNC3(struct __sk_buff *skb)
{
	uint32_t old_ip, new_ip = 0x3fea8c0;
	int ret;

	ret = FUNC0(skb, IP_DST_OFF, &old_ip, 4);
	if (ret < 0) {
		FUNC1("bpf_skb_load_bytes failed: %d\n", ret);
		return BPF_DROP;
	}

	if (old_ip == 0x2fea8c0) {
		FUNC1("out: rewriting from %x to %x\n", old_ip, new_ip);
		return FUNC2(skb, old_ip, new_ip, 1);
	}

	return BPF_OK;
}