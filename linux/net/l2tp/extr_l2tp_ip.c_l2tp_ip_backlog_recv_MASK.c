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

/* Variables and functions */
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	int rc;

	/* Charge it to the socket, dropping if the queue is full. */
	rc = FUNC3(sk, skb);
	if (rc < 0)
		goto drop;

	return 0;

drop:
	FUNC0(FUNC2(sk), IPSTATS_MIB_INDISCARDS);
	FUNC1(skb);
	return 0;
}