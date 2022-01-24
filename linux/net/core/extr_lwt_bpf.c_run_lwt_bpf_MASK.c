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
struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct bpf_lwt_prog {int /*<<< orphan*/  name; int /*<<< orphan*/  prog; } ;

/* Variables and functions */
#define  BPF_DROP 131 
#define  BPF_LWT_REROUTE 130 
#define  BPF_OK 129 
#define  BPF_REDIRECT 128 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct bpf_lwt_prog *lwt,
		       struct dst_entry *dst, bool can_redirect)
{
	int ret;

	/* Preempt disable is needed to protect per-cpu redirect_info between
	 * BPF prog and skb_do_redirect(). The call_rcu in bpf_prog_put() and
	 * access to maps strictly require a rcu_read_lock() for protection,
	 * mixing with BH RCU lock doesn't work.
	 */
	FUNC4();
	FUNC0(skb);
	ret = FUNC1(lwt->prog, skb);

	switch (ret) {
	case BPF_OK:
	case BPF_LWT_REROUTE:
		break;

	case BPF_REDIRECT:
		if (FUNC8(!can_redirect)) {
			FUNC3("Illegal redirect return code in prog %s\n",
				     lwt->name ? : "<unknown>");
			ret = BPF_OK;
		} else {
			FUNC7(skb);
			ret = FUNC6(skb);
			if (ret == 0)
				ret = BPF_REDIRECT;
		}
		break;

	case BPF_DROP:
		FUNC2(skb);
		ret = -EPERM;
		break;

	default:
		FUNC3("bpf-lwt: Illegal return value %u, expect packet loss\n", ret);
		FUNC2(skb);
		ret = -EINVAL;
		break;
	}

	FUNC5();

	return ret;
}