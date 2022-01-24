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
struct socket {scalar_t__ sk; } ;
struct aa_sk_ctx {struct aa_label* label; } ;
struct aa_ns {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 struct aa_sk_ctx* FUNC0 (scalar_t__) ; 
 struct aa_label* FUNC1 () ; 
 struct aa_ns* FUNC2 () ; 
 void* FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_ns*) ; 
 struct aa_label* FUNC6 (struct aa_ns*) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, int family,
				       int type, int protocol, int kern)
{
	struct aa_label *label;

	if (kern) {
		struct aa_ns *ns = FUNC2();

		label = FUNC3(FUNC6(ns));
		FUNC5(ns);
	} else
		label = FUNC1();

	if (sock->sk) {
		struct aa_sk_ctx *ctx = FUNC0(sock->sk);

		FUNC4(ctx->label);
		ctx->label = FUNC3(label);
	}
	FUNC4(label);

	return 0;
}