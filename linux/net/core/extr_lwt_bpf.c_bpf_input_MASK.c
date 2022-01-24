#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct dst_entry {TYPE_2__* lwtstate; } ;
struct TYPE_3__ {scalar_t__ prog; } ;
struct bpf_lwt {TYPE_1__ in; } ;
struct TYPE_4__ {int (* orig_input ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int BPF_LWT_REROUTE ; 
 int EINVAL ; 
 int /*<<< orphan*/  NO_REDIRECT ; 
 int FUNC0 (struct sk_buff*) ; 
 struct bpf_lwt* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,TYPE_1__*,struct dst_entry*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC4(skb);
	struct bpf_lwt *bpf;
	int ret;

	bpf = FUNC1(dst->lwtstate);
	if (bpf->in.prog) {
		ret = FUNC3(skb, &bpf->in, dst, NO_REDIRECT);
		if (ret < 0)
			return ret;
		if (ret == BPF_LWT_REROUTE)
			return FUNC0(skb);
	}

	if (FUNC6(!dst->lwtstate->orig_input)) {
		FUNC2(skb);
		return -EINVAL;
	}

	return dst->lwtstate->orig_input(skb);
}