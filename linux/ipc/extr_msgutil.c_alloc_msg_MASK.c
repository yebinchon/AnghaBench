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
struct msg_msgseg {struct msg_msgseg* next; } ;
struct msg_msg {struct msg_msgseg* next; int /*<<< orphan*/ * security; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATALEN_MSG ; 
 int /*<<< orphan*/  DATALEN_SEG ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct msg_msg*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct msg_msg *FUNC4(size_t len)
{
	struct msg_msg *msg;
	struct msg_msgseg **pseg;
	size_t alen;

	alen = FUNC3(len, DATALEN_MSG);
	msg = FUNC2(sizeof(*msg) + alen, GFP_KERNEL_ACCOUNT);
	if (msg == NULL)
		return NULL;

	msg->next = NULL;
	msg->security = NULL;

	len -= alen;
	pseg = &msg->next;
	while (len > 0) {
		struct msg_msgseg *seg;

		FUNC0();

		alen = FUNC3(len, DATALEN_SEG);
		seg = FUNC2(sizeof(*seg) + alen, GFP_KERNEL_ACCOUNT);
		if (seg == NULL)
			goto out_err;
		*pseg = seg;
		seg->next = NULL;
		pseg = &seg->next;
		len -= alen;
	}

	return msg;

out_err:
	FUNC1(msg);
	return NULL;
}