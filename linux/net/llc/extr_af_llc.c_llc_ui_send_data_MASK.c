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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {scalar_t__ p_flag; scalar_t__ remote_busy_flag; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*,long) ; 
 long FUNC5 (struct sock*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sock* sk, struct sk_buff *skb, int noblock)
{
	struct llc_sock* llc = FUNC3(sk);

	if (FUNC6(FUNC2(llc->state) ||
		     llc->remote_busy_flag ||
		     llc->p_flag)) {
		long timeout = FUNC5(sk, noblock);
		int rc;

		rc = FUNC4(sk, timeout);
		if (rc) {
			FUNC0(skb);
			return rc;
		}
	}
	return FUNC1(sk, skb);
}