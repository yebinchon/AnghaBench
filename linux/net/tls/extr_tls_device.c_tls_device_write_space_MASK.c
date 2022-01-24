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
struct tls_context {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  sk_write_pending; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int MSG_SENDPAGE_DECRYPTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct tls_context*,int) ; 

void FUNC3(struct sock *sk, struct tls_context *ctx)
{
	if (FUNC1(ctx)) {
		gfp_t sk_allocation = sk->sk_allocation;

		FUNC0(sk->sk_write_pending);

		sk->sk_allocation = GFP_ATOMIC;
		FUNC2(sk, ctx,
					MSG_DONTWAIT | MSG_NOSIGNAL |
					MSG_SENDPAGE_DECRYPTED);
		sk->sk_allocation = sk_allocation;
	}
}