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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock_reuseport {int num_socks; struct sock** socks; int /*<<< orphan*/  prog; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_reuseport_cb; } ;
struct sk_buff {int dummy; } ;
struct bpf_prog {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ BPF_PROG_TYPE_SK_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCP_ESTABLISHED ; 
 struct sock* FUNC1 (struct sock_reuseport*,struct sock*,struct bpf_prog*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC7 (struct sock_reuseport*,int /*<<< orphan*/ ,struct bpf_prog*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

struct sock *FUNC9(struct sock *sk,
				   u32 hash,
				   struct sk_buff *skb,
				   int hdr_len)
{
	struct sock_reuseport *reuse;
	struct bpf_prog *prog;
	struct sock *sk2 = NULL;
	u16 socks;

	FUNC4();
	reuse = FUNC3(sk->sk_reuseport_cb);

	/* if memory allocation failed or add call is not yet complete */
	if (!reuse)
		goto out;

	prog = FUNC3(reuse->prog);
	socks = FUNC0(reuse->num_socks);
	if (FUNC2(socks)) {
		/* paired with smp_wmb() in reuseport_add_sock() */
		FUNC8();

		if (!prog || !skb)
			goto select_by_hash;

		if (prog->type == BPF_PROG_TYPE_SK_REUSEPORT)
			sk2 = FUNC1(reuse, sk, prog, skb, hash);
		else
			sk2 = FUNC7(reuse, socks, prog, skb, hdr_len);

select_by_hash:
		/* no bpf or invalid bpf result: fall back to hash usage */
		if (!sk2) {
			int i, j;

			i = j = FUNC6(hash, socks);
			while (reuse->socks[i]->sk_state == TCP_ESTABLISHED) {
				i++;
				if (i >= reuse->num_socks)
					i = 0;
				if (i == j)
					goto out;
			}
			sk2 = reuse->socks[i];
		}
	}

out:
	FUNC5();
	return sk2;
}