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
struct pnpipehdr {int /*<<< orphan*/ * data; int /*<<< orphan*/  data0; int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  message_id; int /*<<< orphan*/  utid; int /*<<< orphan*/  pep_type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAD ; 
 int /*<<< orphan*/  PNS_PEP_CTRL_RESP ; 
 struct sk_buff* FUNC0 (struct sock*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sockaddr_pn*) ; 
 int FUNC2 (struct sock*,struct sk_buff*,struct sockaddr_pn*) ; 
 void* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *oskb, u8 code,
				gfp_t priority)
{
	const struct pnpipehdr *oph = FUNC3(oskb);
	struct sk_buff *skb;
	struct pnpipehdr *ph;
	struct sockaddr_pn dst;
	u8 data[4] = {
		oph->pep_type, /* PEP type */
		code, /* error code, at an unusual offset */
		PAD, PAD,
	};

	skb = FUNC0(sk, data, 4, priority);
	if (!skb)
		return -ENOMEM;

	ph = FUNC3(skb);
	ph->utid = oph->utid;
	ph->message_id = PNS_PEP_CTRL_RESP;
	ph->pipe_handle = oph->pipe_handle;
	ph->data0 = oph->data[0]; /* CTRL id */

	FUNC1(oskb, &dst);
	return FUNC2(sk, skb, &dst);
}