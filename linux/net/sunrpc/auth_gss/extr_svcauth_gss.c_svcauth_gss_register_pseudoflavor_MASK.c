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
typedef  int /*<<< orphan*/  u32 ;
struct auth_domain {struct gss_domain* name; int /*<<< orphan*/ * flavour; int /*<<< orphan*/  ref; } ;
struct gss_domain {struct auth_domain h; int /*<<< orphan*/  pseudoflavor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct auth_domain* FUNC0 (char*,struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct gss_domain*) ; 
 struct gss_domain* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct gss_domain* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svcauthops_gss ; 

int
FUNC6(u32 pseudoflavor, char * name)
{
	struct gss_domain	*new;
	struct auth_domain	*test;
	int			stat = -ENOMEM;

	new = FUNC3(sizeof(*new), GFP_KERNEL);
	if (!new)
		goto out;
	FUNC4(&new->h.ref);
	new->h.name = FUNC5(name, GFP_KERNEL);
	if (!new->h.name)
		goto out_free_dom;
	new->h.flavour = &svcauthops_gss;
	new->pseudoflavor = pseudoflavor;

	stat = 0;
	test = FUNC0(name, &new->h);
	if (test != &new->h) { /* Duplicate registration */
		FUNC1(test);
		FUNC2(new->h.name);
		goto out_free_dom;
	}
	return 0;

out_free_dom:
	FUNC2(new);
out:
	return stat;
}