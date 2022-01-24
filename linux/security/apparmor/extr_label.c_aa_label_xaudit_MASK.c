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
struct audit_buffer {int dummy; } ;
struct aa_ns {int dummy; } ;
struct aa_label {scalar_t__ hname; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,struct aa_ns*,struct aa_label*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 (struct aa_ns*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct aa_ns*,struct aa_label*,int) ; 

void FUNC10(struct audit_buffer *ab, struct aa_ns *ns,
		     struct aa_label *label, int flags, gfp_t gfp)
{
	const char *str;
	char *name = NULL;
	int len;

	FUNC0(!ab);
	FUNC0(!label);

	if (!FUNC9(ns, label, flags) ||
	    FUNC6(ns, label, flags)) {
		len  = FUNC2(&name, ns, label, flags, gfp);
		if (len == -1) {
			FUNC1("label print error");
			return;
		}
		str = name;
	} else {
		str = (char *) label->hname;
		len = FUNC8(str);
	}
	if (FUNC5(str, len))
		FUNC3(ab, str, len);
	else
		FUNC4(ab, str, len);

	FUNC7(name);
}