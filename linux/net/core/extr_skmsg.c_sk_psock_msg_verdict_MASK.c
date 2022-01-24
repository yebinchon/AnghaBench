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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_parser; } ;
struct sk_psock {int /*<<< orphan*/  sk_redir; int /*<<< orphan*/  apply_bytes; TYPE_1__ progs; } ;
struct sk_msg {int /*<<< orphan*/  sk_redir; int /*<<< orphan*/  apply_bytes; struct sock* sk; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog*,struct sk_msg*) ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 
 int __SK_DROP ; 
 int __SK_PASS ; 
 int __SK_REDIRECT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_msg*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct sock *sk, struct sk_psock *psock,
			 struct sk_msg *msg)
{
	struct bpf_prog *prog;
	int ret;

	FUNC2();
	FUNC4();
	prog = FUNC1(psock->progs.msg_parser);
	if (FUNC10(!prog)) {
		ret = __SK_PASS;
		goto out;
	}

	FUNC6(msg);
	msg->sk = sk;
	ret = FUNC0(prog, msg);
	ret = FUNC7(ret, msg->sk_redir);
	psock->apply_bytes = msg->apply_bytes;
	if (ret == __SK_REDIRECT) {
		if (psock->sk_redir)
			FUNC9(psock->sk_redir);
		psock->sk_redir = msg->sk_redir;
		if (!psock->sk_redir) {
			ret = __SK_DROP;
			goto out;
		}
		FUNC8(psock->sk_redir);
	}
out:
	FUNC5();
	FUNC3();
	return ret;
}