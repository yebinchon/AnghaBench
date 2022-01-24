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
struct sk_psock {int /*<<< orphan*/ * sk; } ;
struct sk_buff {int /*<<< orphan*/ * sk; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct sk_psock *psock, struct bpf_prog *prog,
			    struct sk_buff *skb)
{
	int ret;

	skb->sk = psock->sk;
	FUNC1(skb);
	FUNC2();
	ret = FUNC0(prog, skb);
	FUNC3();
	/* strparser clones the skb before handing it to a upper layer,
	 * meaning skb_orphan has been called. We NULL sk on the way out
	 * to ensure we don't trigger a BUG_ON() in skb/sk operations
	 * later and because we are not charging the memory of this skb
	 * to any socket yet.
	 */
	skb->sk = NULL;
	return ret;
}