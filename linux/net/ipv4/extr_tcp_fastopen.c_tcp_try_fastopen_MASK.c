#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcp_fastopen_cookie {int len; int /*<<< orphan*/  exp; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {scalar_t__ end_seq; scalar_t__ seq; } ;
struct TYPE_5__ {int sysctl_tcp_fastopen; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPFASTOPENCOOKIEREQD ; 
 int /*<<< orphan*/  LINUX_MIB_TCPFASTOPENPASSIVE ; 
 int /*<<< orphan*/  LINUX_MIB_TCPFASTOPENPASSIVEALTKEY ; 
 int /*<<< orphan*/  LINUX_MIB_TCPFASTOPENPASSIVEFAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  TFO_SERVER_COOKIE_NOT_REQD ; 
 int TFO_SERVER_ENABLE ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct request_sock*,struct sk_buff*,struct tcp_fastopen_cookie*) ; 
 int FUNC4 (struct sock*,struct request_sock*,struct sk_buff*,struct tcp_fastopen_cookie*,struct tcp_fastopen_cookie*) ; 
 struct sock* FUNC5 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC6 (struct sock*,struct dst_entry const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sock*) ; 

struct sock *FUNC8(struct sock *sk, struct sk_buff *skb,
			      struct request_sock *req,
			      struct tcp_fastopen_cookie *foc,
			      const struct dst_entry *dst)
{
	bool syn_data = FUNC1(skb)->end_seq != FUNC1(skb)->seq + 1;
	int tcp_fastopen = FUNC2(sk)->ipv4.sysctl_tcp_fastopen;
	struct tcp_fastopen_cookie valid_foc = { .len = -1 };
	struct sock *child;
	int ret = 0;

	if (foc->len == 0) /* Client requests a cookie */
		FUNC0(FUNC2(sk), LINUX_MIB_TCPFASTOPENCOOKIEREQD);

	if (!((tcp_fastopen & TFO_SERVER_ENABLE) &&
	      (syn_data || foc->len >= 0) &&
	      FUNC7(sk))) {
		foc->len = -1;
		return NULL;
	}

	if (syn_data &&
	    FUNC6(sk, dst, TFO_SERVER_COOKIE_NOT_REQD))
		goto fastopen;

	if (foc->len == 0) {
		/* Client requests a cookie. */
		FUNC3(sk, req, skb, &valid_foc);
	} else if (foc->len > 0) {
		ret = FUNC4(sk, req, skb, foc,
						    &valid_foc);
		if (!ret) {
			FUNC0(FUNC2(sk),
				      LINUX_MIB_TCPFASTOPENPASSIVEFAIL);
		} else {
			/* Cookie is valid. Create a (full) child socket to
			 * accept the data in SYN before returning a SYN-ACK to
			 * ack the data. If we fail to create the socket, fall
			 * back and ack the ISN only but includes the same
			 * cookie.
			 *
			 * Note: Data-less SYN with valid cookie is allowed to
			 * send data in SYN_RECV state.
			 */
fastopen:
			child = FUNC5(sk, skb, req);
			if (child) {
				if (ret == 2) {
					valid_foc.exp = foc->exp;
					*foc = valid_foc;
					FUNC0(FUNC2(sk),
						      LINUX_MIB_TCPFASTOPENPASSIVEALTKEY);
				} else {
					foc->len = -1;
				}
				FUNC0(FUNC2(sk),
					      LINUX_MIB_TCPFASTOPENPASSIVE);
				return child;
			}
			FUNC0(FUNC2(sk),
				      LINUX_MIB_TCPFASTOPENPASSIVEFAIL);
		}
	}
	valid_foc.exp = foc->exp;
	*foc = valid_foc;
	return NULL;
}