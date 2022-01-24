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
struct xt_tcp {int invflags; unsigned char flg_mask; unsigned char flg_cmp; scalar_t__ option; int /*<<< orphan*/ * dpts; int /*<<< orphan*/ * spts; } ;
struct xt_action_param {int fragoff; int hotdrop; int /*<<< orphan*/  thoff; struct xt_tcp* matchinfo; } ;
struct tcphdr {int doff; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  _tcph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xt_tcp const*,int /*<<< orphan*/ ,int) ; 
 int XT_TCP_INV_DSTPT ; 
 int /*<<< orphan*/  XT_TCP_INV_FLAGS ; 
 int XT_TCP_INV_OPTION ; 
 int XT_TCP_INV_SRCPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct tcphdr* FUNC4 (struct sk_buff const*,int /*<<< orphan*/ ,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct sk_buff const*,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static bool FUNC6(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct tcphdr *th;
	struct tcphdr _tcph;
	const struct xt_tcp *tcpinfo = par->matchinfo;

	if (par->fragoff != 0) {
		/* To quote Alan:

		   Don't allow a fragment of TCP 8 bytes in. Nobody normal
		   causes this. Its a cracker trying to break in by doing a
		   flag overwrite to pass the direction checks.
		*/
		if (par->fragoff == 1) {
			FUNC3("Dropping evil TCP offset=1 frag.\n");
			par->hotdrop = true;
		}
		/* Must not be a fragment. */
		return false;
	}

	th = FUNC4(skb, par->thoff, sizeof(_tcph), &_tcph);
	if (th == NULL) {
		/* We've been asked to examine this packet, and we
		   can't.  Hence, no choice but to drop. */
		FUNC3("Dropping evil TCP offset=0 tinygram.\n");
		par->hotdrop = true;
		return false;
	}

	if (!FUNC2(tcpinfo->spts[0], tcpinfo->spts[1],
			FUNC1(th->source),
			!!(tcpinfo->invflags & XT_TCP_INV_SRCPT)))
		return false;
	if (!FUNC2(tcpinfo->dpts[0], tcpinfo->dpts[1],
			FUNC1(th->dest),
			!!(tcpinfo->invflags & XT_TCP_INV_DSTPT)))
		return false;
	if (!FUNC0(tcpinfo, XT_TCP_INV_FLAGS,
		     (((unsigned char *)th)[13] & tcpinfo->flg_mask) == tcpinfo->flg_cmp))
		return false;
	if (tcpinfo->option) {
		if (th->doff * 4 < sizeof(_tcph)) {
			par->hotdrop = true;
			return false;
		}
		if (!FUNC5(tcpinfo->option, skb, par->thoff,
				     th->doff*4 - sizeof(_tcph),
				     tcpinfo->invflags & XT_TCP_INV_OPTION,
				     &par->hotdrop))
			return false;
	}
	return true;
}