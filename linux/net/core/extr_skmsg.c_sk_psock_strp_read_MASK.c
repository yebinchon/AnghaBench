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
struct TYPE_2__ {int /*<<< orphan*/  skb_verdict; } ;
struct sk_psock {TYPE_1__ progs; } ;
struct sk_buff {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
 int __SK_DROP ; 
 scalar_t__ FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sk_psock*,struct bpf_prog*,struct sk_buff*) ; 
 struct sk_psock* FUNC5 (struct strparser*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_psock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC11(struct strparser *strp, struct sk_buff *skb)
{
	struct sk_psock *psock = FUNC5(strp);
	struct bpf_prog *prog;
	int ret = __SK_DROP;

	FUNC2();
	prog = FUNC0(psock->progs.skb_verdict);
	if (FUNC1(prog)) {
		FUNC8(skb);
		FUNC9(skb);
		ret = FUNC4(psock, prog, skb);
		ret = FUNC6(ret, FUNC10(skb));
	}
	FUNC3();
	FUNC7(psock, skb, ret);
}