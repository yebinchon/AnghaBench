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
struct tls_context {struct proto* sk_proto; } ;
struct sock {struct proto* sk_prot; } ;
struct proto {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tls_context*) ; 
 struct tls_context* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct proto *p)
{
	struct tls_context *ctx;

	ctx = FUNC1(sk);
	if (FUNC0(ctx))
		ctx->sk_proto = p;
	else
		sk->sk_prot = p;
}