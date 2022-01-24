#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_ndp_count; } ;
struct TYPE_2__ {scalar_t__ dccpd_opt_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCPO_NDP_COUNT ; 
 scalar_t__ DCCP_MAX_OPT_LEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char*,int const) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 
 unsigned char* FUNC5 (struct sk_buff*,int const) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct dccp_sock *dp = FUNC4(sk);
	u64 ndp = dp->dccps_ndp_count;

	if (FUNC3(skb))
		++dp->dccps_ndp_count;
	else
		dp->dccps_ndp_count = 0;

	if (ndp > 0) {
		unsigned char *ptr;
		const int ndp_len = FUNC2(ndp);
		const int len = ndp_len + 2;

		if (FUNC0(skb)->dccpd_opt_len + len > DCCP_MAX_OPT_LEN)
			return -1;

		FUNC0(skb)->dccpd_opt_len += len;

		ptr = FUNC5(skb, len);
		*ptr++ = DCCPO_NDP_COUNT;
		*ptr++ = len;
		FUNC1(ndp, ptr, ndp_len);
	}

	return 0;
}