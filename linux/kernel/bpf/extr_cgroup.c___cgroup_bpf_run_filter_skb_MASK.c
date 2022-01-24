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
struct sock {scalar_t__ sk_family; int /*<<< orphan*/  sk_cgrp_data; } ;
struct sk_buff {unsigned int data; struct sock* sk; } ;
struct TYPE_2__ {int /*<<< orphan*/ * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int BPF_CGROUP_INET_EGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int /*<<< orphan*/  __bpf_prog_run_save_cb ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 unsigned int FUNC7 (struct sk_buff*) ; 
 struct cgroup* FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct sock *sk,
				struct sk_buff *skb,
				enum bpf_attach_type type)
{
	unsigned int offset = skb->data - FUNC7(skb);
	struct sock *save_sk;
	void *saved_data_end;
	struct cgroup *cgrp;
	int ret;

	if (!sk || !FUNC6(sk))
		return 0;

	if (sk->sk_family != AF_INET && sk->sk_family != AF_INET6)
		return 0;

	cgrp = FUNC8(&sk->sk_cgrp_data);
	save_sk = skb->sk;
	skb->sk = sk;
	FUNC3(skb, offset);

	/* compute pointers for the bpf prog */
	FUNC4(skb, &saved_data_end);

	if (type == BPF_CGROUP_INET_EGRESS) {
		ret = FUNC0(
			cgrp->bpf.effective[type], skb, __bpf_prog_run_save_cb);
	} else {
		ret = FUNC1(cgrp->bpf.effective[type], skb,
					  __bpf_prog_run_save_cb);
		ret = (ret == 1 ? 0 : -EPERM);
	}
	FUNC5(skb, saved_data_end);
	FUNC2(skb, offset);
	skb->sk = save_sk;

	return ret;
}