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
struct tls_context {int (* push_pending_record ) (struct sock*,int) ;} ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,int) ; 
 struct tls_context* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct tls_context*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, int flags)
{
	struct tls_context *ctx = FUNC1(sk);

	if (FUNC2(ctx))
		return ctx->push_pending_record(sk, flags);

	return 0;
}