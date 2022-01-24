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
struct sk_buff {int dummy; } ;
struct cmtp_session {int dummy; } ;
typedef  int __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int CAPI_INTEROPERABILITY ; 
 int CAPI_MSG_BASELEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmtp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct cmtp_session *session,
					__u8 subcmd, __u16 appl, __u16 msgnum,
					__u16 function, unsigned char *buf, int len)
{
	struct sk_buff *skb;
	unsigned char *s;

	FUNC0("session %p subcmd 0x%02x appl %d msgnum %d", session, subcmd, appl, msgnum);

	skb = FUNC2(CAPI_MSG_BASELEN + 6 + len, GFP_ATOMIC);
	if (!skb) {
		FUNC1("Can't allocate memory for interoperability packet");
		return;
	}

	s = FUNC7(skb, CAPI_MSG_BASELEN + 6 + len);

	FUNC3(s, 0, CAPI_MSG_BASELEN + 6 + len);
	FUNC3(s, 2, appl);
	FUNC4 (s, 4, CAPI_INTEROPERABILITY);
	FUNC4 (s, 5, subcmd);
	FUNC3(s, 6, msgnum);

	/* Interoperability selector (Bluetooth Device Management) */
	FUNC3(s, 8, 0x0001);

	FUNC4 (s, 10, 3 + len);
	FUNC3(s, 11, function);
	FUNC4 (s, 13, len);

	if (len > 0)
		FUNC6(s + 14, buf, len);

	FUNC5(session, skb);
}