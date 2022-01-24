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
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_HELPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 struct nf_conn_help* FUNC2 (struct nf_conn*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nf_conn *ct, void *me)
{
	struct nf_conn_help *help = FUNC2(ct);

	if (help && FUNC3(help->helper) == me) {
		FUNC1(IPCT_HELPER, ct);
		FUNC0(help->helper, NULL);
	}

	/* We are not intended to delete this conntrack. */
	return 0;
}