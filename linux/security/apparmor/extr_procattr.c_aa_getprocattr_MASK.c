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
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int ENOMEM ; 
 int FLAG_HIDDEN_UNCONFINED ; 
 int FLAG_SHOW_MODE ; 
 int FLAG_VIEW_SUBNS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct aa_ns* FUNC1 () ; 
 int FUNC2 (char*,int,struct aa_ns*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_ns*,struct aa_ns*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_ns*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct aa_ns* FUNC6 (struct aa_label*) ; 

int FUNC7(struct aa_label *label, char **string)
{
	struct aa_ns *ns = FUNC6(label);
	struct aa_ns *current_ns = FUNC1();
	int len;

	if (!FUNC3(current_ns, ns, true)) {
		FUNC4(current_ns);
		return -EACCES;
	}

	len = FUNC2(NULL, 0, current_ns, label,
				FLAG_SHOW_MODE | FLAG_VIEW_SUBNS |
				FLAG_HIDDEN_UNCONFINED);
	FUNC0(len < 0);

	*string = FUNC5(len + 2, GFP_KERNEL);
	if (!*string) {
		FUNC4(current_ns);
		return -ENOMEM;
	}

	len = FUNC2(*string, len + 2, current_ns, label,
				FLAG_SHOW_MODE | FLAG_VIEW_SUBNS |
				FLAG_HIDDEN_UNCONFINED);
	if (len < 0) {
		FUNC4(current_ns);
		return len;
	}

	(*string)[len] = '\n';
	(*string)[len + 1] = 0;

	FUNC4(current_ns);
	return len + 1;
}