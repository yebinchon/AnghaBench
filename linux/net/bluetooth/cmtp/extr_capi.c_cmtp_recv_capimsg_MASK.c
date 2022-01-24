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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct capi_ctr {int dummy; } ;
struct cmtp_session {int flags; int num; struct capi_ctr ctrl; } ;
struct cmtp_application {int /*<<< orphan*/  appl; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cmtp_session*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ CAPI_INTEROPERABILITY ; 
 scalar_t__ CAPI_MSG_BASELEN ; 
 int /*<<< orphan*/  CMTP_LOOPBACK ; 
 int /*<<< orphan*/  CMTP_MAPPING ; 
 int /*<<< orphan*/  FUNC8 (struct capi_ctr*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct cmtp_application* FUNC9 (struct cmtp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cmtp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

void FUNC12(struct cmtp_session *session, struct sk_buff *skb)
{
	struct capi_ctr *ctrl = &session->ctrl;
	struct cmtp_application *application;
	__u16 appl;
	__u32 contr;

	FUNC1("session %p skb %p len %d", session, skb, skb->len);

	if (skb->len < CAPI_MSG_BASELEN)
		return;

	if (FUNC4(skb->data) == CAPI_INTEROPERABILITY) {
		FUNC10(session, skb);
		return;
	}

	if (session->flags & FUNC0(CMTP_LOOPBACK)) {
		FUNC11(skb);
		return;
	}

	appl = FUNC3(skb->data);
	contr = FUNC5(skb->data);

	application = FUNC9(session, CMTP_MAPPING, appl);
	if (application) {
		appl = application->appl;
		FUNC6(skb->data, appl);
	} else {
		FUNC2("Can't find application with id %d", appl);
		FUNC11(skb);
		return;
	}

	if ((contr & 0x7f) == 0x01) {
		contr = (contr & 0xffffff80) | session->num;
		FUNC7(skb->data, contr);
	}

	FUNC8(ctrl, appl, skb);
}