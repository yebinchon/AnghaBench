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
struct sockaddr_hci {int /*<<< orphan*/  hci_channel; int /*<<< orphan*/  hci_dev; int /*<<< orphan*/  hci_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int EBADFD ; 
 int EOPNOTSUPP ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *addr,
			    int peer)
{
	struct sockaddr_hci *haddr = (struct sockaddr_hci *)addr;
	struct sock *sk = sock->sk;
	struct hci_dev *hdev;
	int err = 0;

	FUNC0("sock %p sk %p", sock, sk);

	if (peer)
		return -EOPNOTSUPP;

	FUNC2(sk);

	hdev = FUNC1(sk)->hdev;
	if (!hdev) {
		err = -EBADFD;
		goto done;
	}

	haddr->hci_family = AF_BLUETOOTH;
	haddr->hci_dev    = hdev->id;
	haddr->hci_channel= FUNC1(sk)->channel;
	err = sizeof(*haddr);

done:
	FUNC3(sk);
	return err;
}