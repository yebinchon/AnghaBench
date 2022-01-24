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
struct TYPE_2__ {int start; int end; int /*<<< orphan*/  size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct scatterlist*) ; 
 scalar_t__ FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,scalar_t__) ; 
 struct scatterlist* FUNC3 (struct sk_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_msg*,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC7(struct sock *sk, struct sk_msg *dst, struct sk_msg *src,
		 u32 off, u32 len)
{
	int i = src->sg.start;
	struct scatterlist *sge = FUNC3(src, i);
	struct scatterlist *sgd = NULL;
	u32 sge_len, sge_off;

	while (off) {
		if (sge->length > off)
			break;
		off -= sge->length;
		FUNC5(i);
		if (i == src->sg.end && off)
			return -ENOSPC;
		sge = FUNC3(src, i);
	}

	while (len) {
		sge_len = sge->length - off;
		if (sge_len > len)
			sge_len = len;

		if (dst->sg.end)
			sgd = FUNC3(dst, dst->sg.end - 1);

		if (sgd &&
		    (FUNC0(sge) == FUNC0(sgd)) &&
		    (FUNC1(sge) + off == FUNC1(sgd) + sgd->length)) {
			sgd->length += sge_len;
			dst->sg.size += sge_len;
		} else if (!FUNC4(dst)) {
			sge_off = sge->offset + off;
			FUNC6(dst, FUNC0(sge), sge_len, sge_off);
		} else {
			return -ENOSPC;
		}

		off = 0;
		len -= sge_len;
		FUNC2(sk, sge_len);
		FUNC5(i);
		if (i == src->sg.end && len)
			return -ENOSPC;
		sge = FUNC3(src, i);
	}

	return 0;
}