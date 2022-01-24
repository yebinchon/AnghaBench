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
typedef  int u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; int size; scalar_t__ end; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {int length; int offset; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int MSG_SENDPAGE_NOPOLICY ; 
 int FUNC0 (struct sock*,struct page*,int,int,int) ; 
 int FUNC1 (struct sock*,struct page*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 
 struct page* FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int) ; 
 struct scatterlist* FUNC6 (struct sk_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sk_msg *msg, u32 apply_bytes,
			int flags, bool uncharge)
{
	bool apply = apply_bytes;
	struct scatterlist *sge;
	struct page *page;
	int size, ret = 0;
	u32 off;

	while (1) {
		bool has_tx_ulp;

		sge = FUNC6(msg, msg->sg.start);
		size = (apply && apply_bytes < sge->length) ?
			apply_bytes : sge->length;
		off  = sge->offset;
		page = FUNC4(sge);

		FUNC8(sk);
retry:
		has_tx_ulp = FUNC9(sk);
		if (has_tx_ulp) {
			flags |= MSG_SENDPAGE_NOPOLICY;
			ret = FUNC1(sk,
						     page, off, size, flags);
		} else {
			ret = FUNC0(sk, page, off, size, flags);
		}

		if (ret <= 0)
			return ret;
		if (apply)
			apply_bytes -= ret;
		msg->sg.size -= ret;
		sge->offset += ret;
		sge->length -= ret;
		if (uncharge)
			FUNC5(sk, ret);
		if (ret != size) {
			size -= ret;
			off  += ret;
			goto retry;
		}
		if (!sge->length) {
			FUNC2(page);
			FUNC7(msg, start);
			FUNC3(sge, 1);
			if (msg->sg.start == msg->sg.end)
				break;
		}
		if (apply && !apply_bytes)
			break;
	}

	return 0;
}