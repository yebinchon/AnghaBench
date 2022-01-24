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
struct auth_domain {int /*<<< orphan*/ * flavour; int /*<<< orphan*/ * name; int /*<<< orphan*/  ref; } ;
struct unix_domain {struct auth_domain h; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct auth_domain* FUNC0 (char*) ; 
 struct auth_domain* FUNC1 (char*,struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct unix_domain*) ; 
 struct unix_domain* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svcauth_unix ; 
 int /*<<< orphan*/  FUNC7 (struct auth_domain*) ; 

struct auth_domain *FUNC8(char *name)
{
	struct auth_domain *rv;
	struct unix_domain *new = NULL;

	rv = FUNC0(name);
	while(1) {
		if (rv) {
			if (new && rv != &new->h)
				FUNC7(&new->h);

			if (rv->flavour != &svcauth_unix) {
				FUNC2(rv);
				return NULL;
			}
			return rv;
		}

		new = FUNC4(sizeof(*new), GFP_KERNEL);
		if (new == NULL)
			return NULL;
		FUNC5(&new->h.ref);
		new->h.name = FUNC6(name, GFP_KERNEL);
		if (new->h.name == NULL) {
			FUNC3(new);
			return NULL;
		}
		new->h.flavour = &svcauth_unix;
		rv = FUNC1(name, &new->h);
	}
}