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
struct sco_conn {struct sock* sk; } ;
struct hci_conn {struct sco_conn* sco_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,struct sco_conn*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct hci_conn *hcon, int err)
{
	struct sco_conn *conn = hcon->sco_data;
	struct sock *sk;

	if (!conn)
		return;

	FUNC0("hcon %p conn %p, err %d", hcon, conn, err);

	/* Kill socket */
	FUNC5(conn);
	sk = conn->sk;
	FUNC6(conn);

	if (sk) {
		FUNC9(sk);
		FUNC1(sk);
		FUNC7(sk);
		FUNC4(sk, err);
		FUNC2(sk);
		FUNC8(sk);
		FUNC10(sk);
	}

	hcon->sco_data = NULL;
	FUNC3(conn);
}