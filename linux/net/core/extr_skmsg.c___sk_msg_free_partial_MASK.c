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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_msg*,scalar_t__,scalar_t__) ; 
 struct scatterlist* FUNC2 (struct sk_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_msg*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, struct sk_msg *msg,
				  u32 bytes, bool charge)
{
	struct scatterlist *sge;
	u32 i = msg->sg.start;

	while (bytes) {
		sge = FUNC2(msg, i);
		if (!sge->length)
			break;
		if (bytes < sge->length) {
			if (charge)
				FUNC0(sk, bytes);
			sge->length -= bytes;
			sge->offset += bytes;
			msg->sg.size -= bytes;
			break;
		}

		msg->sg.size -= sge->length;
		bytes -= sge->length;
		FUNC3(sk, msg, i, charge);
		FUNC4(i);
		FUNC1(msg, i, bytes);
	}
	msg->sg.start = i;
}