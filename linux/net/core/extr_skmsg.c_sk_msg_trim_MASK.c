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
typedef  size_t u32 ;
struct sock {int dummy; } ;
struct TYPE_4__ {int size; size_t end; size_t curr; int copybreak; size_t start; TYPE_1__* data; } ;
struct sk_msg {TYPE_2__ sg; } ;
struct TYPE_3__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_msg*,size_t,int) ; 
 scalar_t__ FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 

void FUNC6(struct sock *sk, struct sk_msg *msg, int len)
{
	int trim = msg->sg.size - len;
	u32 i = msg->sg.end;

	if (trim <= 0) {
		FUNC0(trim < 0);
		return;
	}

	FUNC5(i);
	msg->sg.size = len;
	while (msg->sg.data[i].length &&
	       trim >= msg->sg.data[i].length) {
		trim -= msg->sg.data[i].length;
		FUNC2(sk, msg, i, true);
		FUNC5(i);
		if (!trim)
			goto out;
	}

	msg->sg.data[i].length -= trim;
	FUNC1(sk, trim);
	/* Adjust copybreak if it falls into the trimmed part of last buf */
	if (msg->sg.curr == i && msg->sg.copybreak > msg->sg.data[i].length)
		msg->sg.copybreak = msg->sg.data[i].length;
out:
	FUNC4(i);
	msg->sg.end = i;

	/* If we trim data a full sg elem before curr pointer update
	 * copybreak and current so that any future copy operations
	 * start at new copy location.
	 * However trimed data that has not yet been used in a copy op
	 * does not require an update.
	 */
	if (!msg->sg.size) {
		msg->sg.curr = msg->sg.start;
		msg->sg.copybreak = 0;
	} else if (FUNC3(msg->sg.start, msg->sg.curr) >=
		   FUNC3(msg->sg.start, msg->sg.end)) {
		FUNC5(i);
		msg->sg.curr = i;
		msg->sg.copybreak = msg->sg.data[i].length;
	}
}