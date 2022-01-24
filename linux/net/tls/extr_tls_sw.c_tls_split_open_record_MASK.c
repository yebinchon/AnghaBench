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
struct TYPE_2__ {scalar_t__ size; scalar_t__ end; scalar_t__ start; scalar_t__ copybreak; scalar_t__ curr; } ;
struct sk_msg {scalar_t__ apply_bytes; TYPE_1__ sg; } ;
struct tls_rec {struct sk_msg msg_plaintext; int /*<<< orphan*/  msg_encrypted; } ;
struct sock {int dummy; } ;
struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC6 (struct sk_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct tls_rec*) ; 
 struct tls_rec* FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct tls_rec *from,
				 struct tls_rec **to, struct sk_msg *msg_opl,
				 struct sk_msg *msg_oen, u32 split_point,
				 u32 tx_overhead_size, u32 *orig_end)
{
	u32 i, j, bytes = 0, apply = msg_opl->apply_bytes;
	struct scatterlist *sge, *osge, *nsge;
	u32 orig_size = msg_opl->sg.size;
	struct scatterlist tmp = { };
	struct sk_msg *msg_npl;
	struct tls_rec *new;
	int ret;

	new = FUNC9(sk);
	if (!new)
		return -ENOMEM;
	ret = FUNC5(sk, &new->msg_encrypted, msg_opl->sg.size +
			   tx_overhead_size, 0);
	if (ret < 0) {
		FUNC8(sk, new);
		return ret;
	}

	*orig_end = msg_opl->sg.end;
	i = msg_opl->sg.start;
	sge = FUNC6(msg_opl, i);
	while (apply && sge->length) {
		if (sge->length > apply) {
			u32 len = sge->length - apply;

			FUNC0(FUNC2(sge));
			FUNC3(&tmp, FUNC2(sge), len,
				    sge->offset + apply);
			sge->length = apply;
			bytes += apply;
			apply = 0;
		} else {
			apply -= sge->length;
			bytes += sge->length;
		}

		FUNC7(i);
		if (i == msg_opl->sg.end)
			break;
		sge = FUNC6(msg_opl, i);
	}

	msg_opl->sg.end = i;
	msg_opl->sg.curr = i;
	msg_opl->sg.copybreak = 0;
	msg_opl->apply_bytes = 0;
	msg_opl->sg.size = bytes;

	msg_npl = &new->msg_plaintext;
	msg_npl->apply_bytes = apply;
	msg_npl->sg.size = orig_size - bytes;

	j = msg_npl->sg.start;
	nsge = FUNC6(msg_npl, j);
	if (tmp.length) {
		FUNC1(nsge, &tmp, sizeof(*nsge));
		FUNC7(j);
		nsge = FUNC6(msg_npl, j);
	}

	osge = FUNC6(msg_opl, i);
	while (osge->length) {
		FUNC1(nsge, osge, sizeof(*nsge));
		FUNC4(nsge);
		FUNC7(i);
		FUNC7(j);
		if (i == *orig_end)
			break;
		osge = FUNC6(msg_opl, i);
		nsge = FUNC6(msg_npl, j);
	}

	msg_npl->sg.end = j;
	msg_npl->sg.curr = j;
	msg_npl->sg.copybreak = 0;

	*to = new;
	return 0;
}