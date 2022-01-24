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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_1__ sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int tx_work_scheduled; int /*<<< orphan*/  tx_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct sock*,int) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void *context, struct sk_buff *skb,
					   int err)
{
	struct sock *sk = (struct sock *) context;

	FUNC0(FUNC1());

	FUNC4("sk=%p err=%d\n", sk, err);

	if (err)
		goto error;

	err = FUNC5(skb);
	if (err)
		goto error_skb;

	err = FUNC10(sk, skb);
	if (err)
		goto error_skb;

	FUNC11(&sk->sk_write_queue.lock);
	if (!FUNC8(&sk->sk_write_queue))
		FUNC7(&FUNC3(sk)->tx_work);
	else
		FUNC3(sk)->tx_work_scheduled = false;
	FUNC12(&sk->sk_write_queue.lock);

	FUNC9(sk);
	return;

error_skb:
	FUNC2(skb);

error:
	FUNC6(sk, err);
	FUNC9(sk);
}