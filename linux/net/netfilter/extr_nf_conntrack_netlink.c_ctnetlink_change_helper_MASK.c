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
struct nlattr {int dummy; } ;
struct nf_conntrack_helper {char* name; int /*<<< orphan*/  (* from_nlattr ) (struct nlattr*,struct nf_conn*) ;} ;
struct nf_conn_help {struct nf_conntrack_helper* helper; } ;
struct nf_conn {scalar_t__ master; } ;

/* Variables and functions */
 size_t CTA_HELP ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_helper*,int /*<<< orphan*/ *) ; 
 struct nf_conntrack_helper* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nlattr const* const,char**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC6 (struct nf_conn*) ; 
 struct nf_conntrack_helper* FUNC7 (struct nf_conntrack_helper*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr*,struct nf_conn*) ; 

__attribute__((used)) static int FUNC12(struct nf_conn *ct,
				   const struct nlattr * const cda[])
{
	struct nf_conntrack_helper *helper;
	struct nf_conn_help *help = FUNC6(ct);
	char *helpname = NULL;
	struct nlattr *helpinfo = NULL;
	int err;

	err = FUNC2(cda[CTA_HELP], &helpname, &helpinfo);
	if (err < 0)
		return err;

	/* don't change helper of sibling connections */
	if (ct->master) {
		/* If we try to change the helper to the same thing twice,
		 * treat the second attempt as a no-op instead of returning
		 * an error.
		 */
		err = -EBUSY;
		if (help) {
			FUNC8();
			helper = FUNC7(help->helper);
			if (helper && !FUNC10(helper->name, helpname))
				err = 0;
			FUNC9();
		}

		return err;
	}

	if (!FUNC10(helpname, "")) {
		if (help && help->helper) {
			/* we had a helper before ... */
			FUNC5(ct);
			FUNC0(help->helper, NULL);
		}

		return 0;
	}

	FUNC8();
	helper = FUNC1(helpname, FUNC3(ct),
					    FUNC4(ct));
	if (helper == NULL) {
		FUNC9();
		return -EOPNOTSUPP;
	}

	if (help) {
		if (help->helper == helper) {
			/* update private helper data if allowed. */
			if (helper->from_nlattr)
				helper->from_nlattr(helpinfo, ct);
			err = 0;
		} else
			err = -EBUSY;
	} else {
		/* we cannot set a helper for an existing conntrack */
		err = -EOPNOTSUPP;
	}

	FUNC9();
	return err;
}