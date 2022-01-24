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
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct sk_msg {int /*<<< orphan*/  skb; TYPE_1__ sg; } ;
struct scatterlist {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_msg*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct scatterlist* FUNC2 (struct sk_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_msg *msg, u32 i,
			 bool charge)
{
	struct scatterlist *sge = FUNC2(msg, i);
	int freed = 0;

	while (msg->sg.size) {
		msg->sg.size -= sge->length;
		freed += FUNC3(sk, msg, i, charge);
		FUNC5(i);
		FUNC1(msg, i, msg->sg.size);
		sge = FUNC2(msg, i);
	}
	FUNC0(msg->skb);
	FUNC4(msg);
	return freed;
}