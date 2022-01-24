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
typedef  int /*<<< orphan*/  u32 ;
struct work_struct {int dummy; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  target_idx; struct nfc_dev* dev; } ;

/* Variables and functions */
 int SEND_SHUTDOWN ; 
 int FUNC0 (struct nfc_dev*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rawsock_data_exchange_complete ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct sock* FUNC8 (struct work_struct*) ; 

__attribute__((used)) static void FUNC9(struct work_struct *work)
{
	struct sock *sk = FUNC8(work);
	struct nfc_dev *dev = FUNC1(sk)->dev;
	u32 target_idx = FUNC1(sk)->target_idx;
	struct sk_buff *skb;
	int rc;

	FUNC2("sk=%p target_idx=%u\n", sk, target_idx);

	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		FUNC4(sk);
		return;
	}

	skb = FUNC5(&sk->sk_write_queue);

	FUNC6(sk);
	rc = FUNC0(dev, target_idx, skb,
			       rawsock_data_exchange_complete, sk);
	if (rc) {
		FUNC3(sk, rc);
		FUNC7(sk);
	}
}