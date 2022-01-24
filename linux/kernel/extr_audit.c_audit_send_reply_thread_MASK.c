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
struct audit_reply {int /*<<< orphan*/  net; int /*<<< orphan*/  portid; int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_reply*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct audit_reply *reply = (struct audit_reply *)arg;
	struct sock *sk = FUNC2(reply->net);

	FUNC0();
	FUNC1();

	/* Ignore failure. It'll only happen if the sender goes away,
	   because our timeout is set to infinite. */
	FUNC4(sk, reply->skb, reply->portid, 0);
	FUNC5(reply->net);
	FUNC3(reply);
	return 0;
}