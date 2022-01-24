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
struct sk_psock {int dummy; } ;
struct TYPE_2__ {int start; int end; int /*<<< orphan*/  size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {scalar_t__ length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_msg*) ; 
 struct sk_msg* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,scalar_t__) ; 
 struct scatterlist* FUNC6 (struct sk_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_msg*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_msg*,struct sk_msg*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_psock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct sk_psock *psock,
			   struct sk_msg *msg, u32 apply_bytes, int flags)
{
	bool apply = apply_bytes;
	struct scatterlist *sge;
	u32 size, copied = 0;
	struct sk_msg *tmp;
	int i, ret = 0;

	tmp = FUNC2(sizeof(*tmp), __GFP_NOWARN | GFP_KERNEL);
	if (FUNC14(!tmp))
		return -ENOMEM;

	FUNC3(sk);
	tmp->sg.start = msg->sg.start;
	i = msg->sg.start;
	do {
		sge = FUNC6(msg, i);
		size = (apply && apply_bytes < sge->length) ?
			apply_bytes : sge->length;
		if (!FUNC13(sk, size)) {
			if (!copied)
				ret = -ENOMEM;
			break;
		}

		FUNC5(sk, size);
		FUNC10(tmp, msg, i, size);
		copied += size;
		if (sge->length)
			FUNC0(FUNC9(tmp, i));
		FUNC8(i);
		tmp->sg.end = i;
		if (apply) {
			apply_bytes -= size;
			if (!apply_bytes)
				break;
		}
	} while (i != msg->sg.end);

	if (!ret) {
		msg->sg.start = i;
		msg->sg.size -= apply_bytes;
		FUNC12(psock, tmp);
		FUNC11(sk, psock);
	} else {
		FUNC7(sk, tmp);
		FUNC1(tmp);
	}

	FUNC4(sk);
	return ret;
}