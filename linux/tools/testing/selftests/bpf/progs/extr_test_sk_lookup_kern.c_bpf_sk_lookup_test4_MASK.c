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
typedef  int /*<<< orphan*/  tuple ;
struct bpf_sock_tuple {int dummy; } ;
struct bpf_sock {int dummy; } ;
struct __sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_CURRENT_NETNS ; 
 struct bpf_sock* FUNC0 (struct __sk_buff*,struct bpf_sock_tuple*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_sock*) ; 

int FUNC2(struct __sk_buff *skb)
{
	struct bpf_sock_tuple tuple = {};
	struct bpf_sock *sk;

	sk = FUNC0(skb, &tuple, sizeof(tuple), BPF_F_CURRENT_NETNS, 0);
	FUNC1(sk);
	return 0;
}