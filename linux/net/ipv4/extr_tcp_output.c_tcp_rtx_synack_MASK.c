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
struct tcp_request_sock_ops {int (* send_synack ) (struct sock const*,int /*<<< orphan*/ *,struct flowi*,struct request_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct flowi {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  txhash; struct tcp_request_sock_ops* af_specific; } ;
struct TYPE_3__ {int /*<<< orphan*/  total_retrans; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPSYNRETRANS ; 
 int /*<<< orphan*/  TCP_MIB_RETRANSSEGS ; 
 int /*<<< orphan*/  TCP_SYNACK_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock const*) ; 
 int FUNC4 (struct sock const*,int /*<<< orphan*/ *,struct flowi*,struct request_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock const*) ; 
 TYPE_2__* FUNC6 (struct request_sock*) ; 
 TYPE_1__* FUNC7 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock const*,struct request_sock*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(const struct sock *sk, struct request_sock *req)
{
	const struct tcp_request_sock_ops *af_ops = FUNC6(req)->af_specific;
	struct flowi fl;
	int res;

	FUNC6(req)->txhash = FUNC2();
	res = af_ops->send_synack(sk, NULL, &fl, req, NULL, TCP_SYNACK_NORMAL);
	if (!res) {
		FUNC1(FUNC3(sk), TCP_MIB_RETRANSSEGS);
		FUNC0(FUNC3(sk), LINUX_MIB_TCPSYNRETRANS);
		if (FUNC9(FUNC5(sk)))
			FUNC7(sk)->total_retrans++;
		FUNC8(sk, req);
	}
	return res;
}