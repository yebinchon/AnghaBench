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
typedef  int /*<<< orphan*/  x ;
struct bpf_xfrm_state {int /*<<< orphan*/  remote_ipv4; int /*<<< orphan*/  spi; int /*<<< orphan*/  reqid; } ;
struct __sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 int TC_ACT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct __sk_buff*,int /*<<< orphan*/ ,struct bpf_xfrm_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct __sk_buff *skb)
{
	struct bpf_xfrm_state x;
	char fmt[] = "reqid %d spi 0x%x remote ip 0x%x\n";
	int ret;

	ret = FUNC1(skb, 0, &x, sizeof(x), 0);
	if (ret < 0)
		return TC_ACT_OK;

	FUNC2(fmt, sizeof(fmt), x.reqid, FUNC0(x.spi),
			 FUNC0(x.remote_ipv4));
	return TC_ACT_OK;
}