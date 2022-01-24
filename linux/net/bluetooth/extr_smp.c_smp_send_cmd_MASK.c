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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct smp_chan {int /*<<< orphan*/  security_timer; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_TIMEOUT ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct l2cap_conn *conn, u8 code, u16 len, void *data)
{
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp;
	struct kvec iv[2];
	struct msghdr msg;

	if (!chan)
		return;

	FUNC0("code 0x%2.2x", code);

	iv[0].iov_base = &code;
	iv[0].iov_len = 1;

	iv[1].iov_base = data;
	iv[1].iov_len = len;

	FUNC4(&msg, 0, sizeof(msg));

	FUNC2(&msg.msg_iter, WRITE, iv, 2, 1 + len);

	FUNC3(chan, &msg, 1 + len);

	if (!chan->data)
		return;

	smp = chan->data;

	FUNC1(&smp->security_timer);
	FUNC5(&smp->security_timer, SMP_TIMEOUT);
}