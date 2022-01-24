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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct dst_entry {TYPE_2__* lwtstate; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ prog; } ;
struct bpf_lwt {TYPE_1__ out; } ;
struct TYPE_4__ {int (* orig_output ) (struct net*,struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NO_REDIRECT ; 
 struct bpf_lwt* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,TYPE_1__*,struct dst_entry*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct net*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC4(skb);
	struct bpf_lwt *bpf;
	int ret;

	bpf = FUNC0(dst->lwtstate);
	if (bpf->out.prog) {
		ret = FUNC3(skb, &bpf->out, dst, NO_REDIRECT);
		if (ret < 0)
			return ret;
	}

	if (FUNC6(!dst->lwtstate->orig_output)) {
		FUNC2("orig_output not set on dst for prog %s\n",
			     bpf->out.name);
		FUNC1(skb);
		return -EINVAL;
	}

	return dst->lwtstate->orig_output(net, sk, skb);
}