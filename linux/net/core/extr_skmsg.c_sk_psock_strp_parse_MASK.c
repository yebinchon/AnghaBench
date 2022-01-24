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
struct strparser {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  skb_parser; } ;
struct sk_psock {TYPE_1__ progs; } ;
struct sk_buff {int len; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sk_psock*,struct bpf_prog*,struct sk_buff*) ; 
 struct sk_psock* FUNC5 (struct strparser*) ; 

__attribute__((used)) static int FUNC6(struct strparser *strp, struct sk_buff *skb)
{
	struct sk_psock *psock = FUNC5(strp);
	struct bpf_prog *prog;
	int ret = skb->len;

	FUNC2();
	prog = FUNC0(psock->progs.skb_parser);
	if (FUNC1(prog))
		ret = FUNC4(psock, prog, skb);
	FUNC3();
	return ret;
}