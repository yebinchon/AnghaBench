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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int /*<<< orphan*/  error_code; int /*<<< orphan*/  pipe_handle; scalar_t__ message_id; int /*<<< orphan*/  utid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct sock*,void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sockaddr_pn*) ; 
 int FUNC2 (struct sock*,struct sk_buff*,struct sockaddr_pn*) ; 
 void* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *oskb, u8 code,
			const void *data, int len, gfp_t priority)
{
	const struct pnpipehdr *oph = FUNC3(oskb);
	struct pnpipehdr *ph;
	struct sk_buff *skb;
	struct sockaddr_pn peer;

	skb = FUNC0(sk, data, len, priority);
	if (!skb)
		return -ENOMEM;

	ph = FUNC3(skb);
	ph->utid = oph->utid;
	ph->message_id = oph->message_id + 1; /* REQ -> RESP */
	ph->pipe_handle = oph->pipe_handle;
	ph->error_code = code;

	FUNC1(oskb, &peer);
	return FUNC2(sk, skb, &peer);
}