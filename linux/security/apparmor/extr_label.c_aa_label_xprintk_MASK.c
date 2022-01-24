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
struct aa_ns {int dummy; } ;
struct aa_label {char* hname; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,struct aa_ns*,struct aa_label*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct aa_ns*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_ns*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct aa_ns*,struct aa_label*,int) ; 

void FUNC8(struct aa_ns *ns, struct aa_label *label, int flags,
		      gfp_t gfp)
{
	FUNC0(!label);

	if (!FUNC7(ns, label, flags)) {
		char *str;
		int len;

		len = FUNC2(&str, ns, label, flags, gfp);
		if (len == -1) {
			FUNC1("label print error");
			return;
		}
		FUNC6("%s", str);
		FUNC4(str);
	} else if (FUNC3(ns, label, flags))
		FUNC6("%s (%s)", label->hname,
		       FUNC5(ns, label, flags));
	else
		FUNC6("%s", label->hname);
}