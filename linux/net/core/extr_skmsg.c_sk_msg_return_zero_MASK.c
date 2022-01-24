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
struct sock {int dummy; } ;
struct TYPE_2__ {int start; int end; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {int length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int) ; 
 struct scatterlist* FUNC1 (struct sk_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct sock *sk, struct sk_msg *msg, int bytes)
{
	int i = msg->sg.start;

	do {
		struct scatterlist *sge = FUNC1(msg, i);

		if (bytes < sge->length) {
			sge->length -= bytes;
			sge->offset += bytes;
			FUNC0(sk, bytes);
			break;
		}

		FUNC0(sk, sge->length);
		bytes -= sge->length;
		sge->length = 0;
		sge->offset = 0;
		FUNC2(i);
	} while (bytes && i != msg->sg.end);
	msg->sg.start = i;
}