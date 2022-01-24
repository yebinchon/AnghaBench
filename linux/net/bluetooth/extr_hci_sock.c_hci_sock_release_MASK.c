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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  promisc; } ;
struct TYPE_2__ {int channel; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
#define  HCI_CHANNEL_CONTROL 131 
#define  HCI_CHANNEL_MONITOR 130 
#define  HCI_CHANNEL_RAW 129 
#define  HCI_CHANNEL_USER 128 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 int /*<<< orphan*/  HCI_USER_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sock*) ; 
 struct sk_buff* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int const,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hci_sk_list ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  monitor_promisc ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 

__attribute__((used)) static int FUNC15(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct hci_dev *hdev;
	struct sk_buff *skb;

	FUNC0("sock %p sk %p", sock, sk);

	if (!sk)
		return 0;

	switch (FUNC7(sk)->channel) {
	case HCI_CHANNEL_MONITOR:
		FUNC1(&monitor_promisc);
		break;
	case HCI_CHANNEL_RAW:
	case HCI_CHANNEL_USER:
	case HCI_CHANNEL_CONTROL:
		/* Send event to monitor */
		skb = FUNC3(sk);
		if (skb) {
			FUNC8(HCI_CHANNEL_MONITOR, skb,
					    HCI_SOCK_TRUSTED, NULL);
			FUNC10(skb);
		}

		FUNC9(sk);
		break;
	}

	FUNC2(&hci_sk_list, sk);

	hdev = FUNC7(sk)->hdev;
	if (hdev) {
		if (FUNC7(sk)->channel == HCI_CHANNEL_USER) {
			/* When releasing a user channel exclusive access,
			 * call hci_dev_do_close directly instead of calling
			 * hci_dev_close to ensure the exclusive access will
			 * be released and the controller brought back down.
			 *
			 * The checking of HCI_AUTO_OFF is not needed in this
			 * case since it will have been cleared already when
			 * opening the user channel.
			 */
			FUNC5(hdev);
			FUNC4(hdev, HCI_USER_CHANNEL);
			FUNC11(hdev);
		}

		FUNC1(&hdev->promisc);
		FUNC6(hdev);
	}

	FUNC13(sk);

	FUNC12(&sk->sk_receive_queue);
	FUNC12(&sk->sk_write_queue);

	FUNC14(sk);
	return 0;
}