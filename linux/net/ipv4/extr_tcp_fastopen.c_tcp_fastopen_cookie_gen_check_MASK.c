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
struct tcp_fastopen_cookie {int len; } ;
struct tcp_fastopen_context {int /*<<< orphan*/ * key; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_sock*,struct sk_buff*,int /*<<< orphan*/ *,struct tcp_fastopen_cookie*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct tcp_fastopen_context*) ; 
 scalar_t__ FUNC4 (struct tcp_fastopen_cookie*,struct tcp_fastopen_cookie*) ; 
 struct tcp_fastopen_context* FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk,
					 struct request_sock *req,
					 struct sk_buff *syn,
					 struct tcp_fastopen_cookie *orig,
					 struct tcp_fastopen_cookie *valid_foc)
{
	struct tcp_fastopen_cookie search_foc = { .len = -1 };
	struct tcp_fastopen_cookie *foc = valid_foc;
	struct tcp_fastopen_context *ctx;
	int i, ret = 0;

	FUNC1();
	ctx = FUNC5(sk);
	if (!ctx)
		goto out;
	for (i = 0; i < FUNC3(ctx); i++) {
		FUNC0(req, syn, &ctx->key[i], foc);
		if (FUNC4(foc, orig)) {
			ret = i + 1;
			goto out;
		}
		foc = &search_foc;
	}
out:
	FUNC2();
	return ret;
}