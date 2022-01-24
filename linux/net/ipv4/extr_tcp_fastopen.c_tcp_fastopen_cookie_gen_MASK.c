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
struct tcp_fastopen_cookie {int dummy; } ;
struct tcp_fastopen_context {int /*<<< orphan*/ * key; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_sock*,struct sk_buff*,int /*<<< orphan*/ *,struct tcp_fastopen_cookie*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tcp_fastopen_context* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk,
				    struct request_sock *req,
				    struct sk_buff *syn,
				    struct tcp_fastopen_cookie *foc)
{
	struct tcp_fastopen_context *ctx;

	FUNC1();
	ctx = FUNC3(sk);
	if (ctx)
		FUNC0(req, syn, &ctx->key[0], foc);
	FUNC2();
}