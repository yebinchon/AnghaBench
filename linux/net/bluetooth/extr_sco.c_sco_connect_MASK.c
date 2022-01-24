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
struct sock {int /*<<< orphan*/  sk_sndtimeo; scalar_t__ sk_state; } ;
struct sco_conn {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {scalar_t__ setting; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BREDR ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ BT_VOICE_TRANSPARENT ; 
 int EHOSTUNREACH ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ESCO_LINK ; 
 scalar_t__ FUNC1 (struct hci_conn*) ; 
 int FUNC2 (struct hci_conn*) ; 
 int SCO_LINK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disable_esco ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 struct hci_dev* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int FUNC12 (struct sco_conn*,struct sock*,int /*<<< orphan*/ *) ; 
 struct sco_conn* FUNC13 (struct hci_conn*) ; 
 TYPE_1__* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sock *sk)
{
	struct sco_conn *conn;
	struct hci_conn *hcon;
	struct hci_dev  *hdev;
	int err, type;

	FUNC0("%pMR -> %pMR", &FUNC14(sk)->src, &FUNC14(sk)->dst);

	hdev = FUNC9(&FUNC14(sk)->dst, &FUNC14(sk)->src, BDADDR_BREDR);
	if (!hdev)
		return -EHOSTUNREACH;

	FUNC6(hdev);

	if (FUNC10(hdev) && !disable_esco)
		type = ESCO_LINK;
	else
		type = SCO_LINK;

	if (FUNC14(sk)->setting == BT_VOICE_TRANSPARENT &&
	    (!FUNC11(hdev) || !FUNC10(hdev))) {
		err = -EOPNOTSUPP;
		goto done;
	}

	hcon = FUNC5(hdev, type, &FUNC14(sk)->dst,
			       FUNC14(sk)->setting);
	if (FUNC1(hcon)) {
		err = FUNC2(hcon);
		goto done;
	}

	conn = FUNC13(hcon);
	if (!conn) {
		FUNC4(hcon);
		err = -ENOMEM;
		goto done;
	}

	/* Update source addr of the socket */
	FUNC3(&FUNC14(sk)->src, &hcon->src);

	err = FUNC12(conn, sk, NULL);
	if (err)
		goto done;

	if (hcon->state == BT_CONNECTED) {
		FUNC15(sk);
		sk->sk_state = BT_CONNECTED;
	} else {
		sk->sk_state = BT_CONNECT;
		FUNC16(sk, sk->sk_sndtimeo);
	}

done:
	FUNC8(hdev);
	FUNC7(hdev);
	return err;
}