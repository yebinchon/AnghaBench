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
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_msg {int /*<<< orphan*/  skb; } ;
struct scatterlist {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 struct scatterlist* FUNC4 (struct sk_msg*,int) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_msg *msg, u32 i,
			    bool charge)
{
	struct scatterlist *sge = FUNC4(msg, i);
	u32 len = sge->length;

	if (charge)
		FUNC3(sk, len);
	if (!msg->skb)
		FUNC1(FUNC2(sge));
	FUNC0(sge, 0, sizeof(*sge));
	return len;
}