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
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn_help {int /*<<< orphan*/  expectations; } ;
struct nf_conn {scalar_t__ master; TYPE_1__* tuplehash; } ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct nf_conn *ct,
			      const struct nf_conntrack_tuple *newreply)
{
	struct nf_conn_help *help = FUNC5(ct);

	/* Should be unconfirmed, so not in hash table yet */
	FUNC0(FUNC4(ct));

	FUNC6("Altering reply tuple of %p to ", ct);
	FUNC3(newreply);

	ct->tuplehash[IP_CT_DIR_REPLY].tuple = *newreply;
	if (ct->master || (help && !FUNC2(&help->expectations)))
		return;

	FUNC7();
	FUNC1(ct, NULL, GFP_ATOMIC);
	FUNC8();
}