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
struct nf_conntrack {int /*<<< orphan*/  use; } ;
struct nf_conn {scalar_t__ master; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_GRE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 int FUNC7 (struct nf_conn*) ; 
 scalar_t__ FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct nf_conn*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct nf_conntrack *nfct)
{
	struct nf_conn *ct = (struct nf_conn *)nfct;

	FUNC12("destroy_conntrack(%p)\n", ct);
	FUNC0(FUNC1(&nfct->use) != 0);

	if (FUNC13(FUNC7(ct))) {
		FUNC11(ct);
		return;
	}

	if (FUNC13(FUNC8(ct) == IPPROTO_GRE))
		FUNC2(ct);

	FUNC3();
	/* Expectations will have been removed in clean_from_lists,
	 * except TFTP can create an expectation on the first packet,
	 * before connection is in the list, so we need to clean here,
	 * too.
	 */
	FUNC10(ct);

	FUNC6(ct);

	FUNC4();

	if (ct->master)
		FUNC9(ct->master);

	FUNC12("destroy_conntrack: returning ct=%p to slab\n", ct);
	FUNC5(ct);
}