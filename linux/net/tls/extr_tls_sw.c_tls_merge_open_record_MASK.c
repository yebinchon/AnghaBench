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
typedef  void* u32 ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ copybreak; void* curr; void* end; void* start; } ;
struct sk_msg {TYPE_1__ sg; scalar_t__ apply_bytes; } ;
struct tls_rec {int /*<<< orphan*/  msg_encrypted; struct sk_msg msg_plaintext; } ;
struct sock {int dummy; } ;
struct scatterlist {scalar_t__ offset; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_rec*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct sk_msg*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct tls_rec *to,
				  struct tls_rec *from, u32 orig_end)
{
	struct sk_msg *msg_npl = &from->msg_plaintext;
	struct sk_msg *msg_opl = &to->msg_plaintext;
	struct scatterlist *osge, *nsge;
	u32 i, j;

	i = msg_opl->sg.end;
	FUNC5(i);
	j = msg_npl->sg.start;

	osge = FUNC3(msg_opl, i);
	nsge = FUNC3(msg_npl, j);

	if (FUNC2(osge) == FUNC2(nsge) &&
	    osge->offset + osge->length == nsge->offset) {
		osge->length += nsge->length;
		FUNC1(FUNC2(nsge));
	}

	msg_opl->sg.end = orig_end;
	msg_opl->sg.curr = orig_end;
	msg_opl->sg.copybreak = 0;
	msg_opl->apply_bytes = msg_opl->sg.size + msg_npl->sg.size;
	msg_opl->sg.size += msg_npl->sg.size;

	FUNC4(sk, &to->msg_encrypted);
	FUNC6(&to->msg_encrypted, &from->msg_encrypted);

	FUNC0(from);
}