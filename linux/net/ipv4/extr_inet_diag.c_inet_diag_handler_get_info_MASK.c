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
struct sock {scalar_t__ sk_type; int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  idiag_sport; } ;
struct inet_diag_msg {int /*<<< orphan*/  idiag_state; TYPE_1__ id; } ;
struct inet_diag_handler {int /*<<< orphan*/  (* idiag_get_info ) (struct sock*,struct inet_diag_msg*,void*) ;scalar_t__ idiag_info_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  inet_sport; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INET_DIAG_INFO ; 
 int /*<<< orphan*/  INET_DIAG_PAD ; 
 int /*<<< orphan*/  INET_DIAG_PROTOCOL ; 
 scalar_t__ FUNC0 (struct inet_diag_handler const*) ; 
 int FUNC1 (struct inet_diag_handler const*) ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 scalar_t__ SOCK_STREAM ; 
 struct inet_diag_handler* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_diag_msg*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_diag_handler const*) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct inet_diag_msg*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlmsghdr*) ; 
 struct inet_diag_msg* FUNC11 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct inet_diag_msg*,void*) ; 

__attribute__((used)) static
int FUNC15(struct sk_buff *skb, struct sock *sk)
{
	const struct inet_diag_handler *handler;
	struct nlmsghdr *nlh;
	struct nlattr *attr;
	struct inet_diag_msg *r;
	void *info = NULL;
	int err = 0;

	nlh = FUNC13(skb, 0, 0, SOCK_DIAG_BY_FAMILY, sizeof(*r), 0);
	if (!nlh)
		return -ENOMEM;

	r = FUNC11(nlh);
	FUNC6(r, 0, sizeof(*r));
	FUNC3(r, sk);
	if (sk->sk_type == SOCK_DGRAM || sk->sk_type == SOCK_STREAM)
		r->id.idiag_sport = FUNC5(sk)->inet_sport;
	r->idiag_state = sk->sk_state;

	if ((err = FUNC8(skb, INET_DIAG_PROTOCOL, sk->sk_protocol))) {
		FUNC10(skb, nlh);
		return err;
	}

	handler = FUNC2(sk->sk_protocol);
	if (FUNC0(handler)) {
		FUNC4(handler);
		FUNC10(skb, nlh);
		return FUNC1(handler);
	}

	attr = handler->idiag_info_size
		? FUNC9(skb, INET_DIAG_INFO,
				    handler->idiag_info_size,
				    INET_DIAG_PAD)
		: NULL;
	if (attr)
		info = FUNC7(attr);

	handler->idiag_get_info(sk, r, info);
	FUNC4(handler);

	FUNC12(skb, nlh);
	return 0;
}