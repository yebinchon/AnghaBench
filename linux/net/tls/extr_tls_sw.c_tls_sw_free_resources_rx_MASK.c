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
struct sock {int dummy; } ;

/* Variables and functions */
 struct tls_context* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

void FUNC3(struct sock *sk)
{
	struct tls_context *tls_ctx = FUNC0(sk);

	FUNC2(sk);
	FUNC1(tls_ctx);
}