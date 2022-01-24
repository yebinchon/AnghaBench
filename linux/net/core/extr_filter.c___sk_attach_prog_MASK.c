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
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int /*<<< orphan*/  refcnt; struct bpf_prog* prog; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_filter*) ; 
 struct sk_filter* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_filter*) ; 
 struct sk_filter* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_filter*) ; 

__attribute__((used)) static int FUNC8(struct bpf_prog *prog, struct sock *sk)
{
	struct sk_filter *fp, *old_fp;

	fp = FUNC2(sizeof(*fp), GFP_KERNEL);
	if (!fp)
		return -ENOMEM;

	fp->prog = prog;

	if (!FUNC0(sk, fp)) {
		FUNC1(fp);
		return -ENOMEM;
	}
	FUNC6(&fp->refcnt, 1);

	old_fp = FUNC5(sk->sk_filter,
					   FUNC3(sk));
	FUNC4(sk->sk_filter, fp);

	if (old_fp)
		FUNC7(sk, old_fp);

	return 0;
}