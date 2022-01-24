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
struct packet_sock {struct packet_mclist* mclist; } ;
struct packet_mclist {int /*<<< orphan*/  addr; int /*<<< orphan*/  count; int /*<<< orphan*/  alen; int /*<<< orphan*/  type; int /*<<< orphan*/  ifindex; struct packet_mclist* next; } ;
struct packet_diag_mclist {int /*<<< orphan*/  pdmc_addr; int /*<<< orphan*/  pdmc_count; int /*<<< orphan*/  pdmc_alen; int /*<<< orphan*/  pdmc_type; int /*<<< orphan*/  pdmc_index; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  PACKET_DIAG_MCLIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct packet_diag_mclist* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(const struct packet_sock *po, struct sk_buff *nlskb)
{
	struct nlattr *mca;
	struct packet_mclist *ml;

	mca = FUNC4(nlskb, PACKET_DIAG_MCLIST);
	if (!mca)
		return -EMSGSIZE;

	FUNC6();
	for (ml = po->mclist; ml; ml = ml->next) {
		struct packet_diag_mclist *dml;

		dml = FUNC5(nlskb, sizeof(*dml));
		if (!dml) {
			FUNC7();
			FUNC2(nlskb, mca);
			return -EMSGSIZE;
		}

		dml->pdmc_index = ml->ifindex;
		dml->pdmc_type = ml->type;
		dml->pdmc_alen = ml->alen;
		dml->pdmc_count = ml->count;
		FUNC0(sizeof(dml->pdmc_addr) != sizeof(ml->addr));
		FUNC1(dml->pdmc_addr, ml->addr, sizeof(ml->addr));
	}

	FUNC7();
	FUNC3(nlskb, mca);

	return 0;
}