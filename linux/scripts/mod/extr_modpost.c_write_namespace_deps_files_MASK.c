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
struct namespace_list {int /*<<< orphan*/  namespace; struct namespace_list* next; } ;
struct module {char* name; struct namespace_list* required_namespaces; scalar_t__ skip; struct module* next; } ;
struct buffer {scalar_t__ pos; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,int /*<<< orphan*/ ) ; 
 struct module* modules ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct module *mod;
	struct namespace_list *ns;
	struct buffer ns_deps_buf = {};

	for (mod = modules; mod; mod = mod->next) {
		char fname[PATH_MAX];

		if (mod->skip)
			continue;

		ns_deps_buf.pos = 0;

		for (ns = mod->required_namespaces; ns; ns = ns->next)
			FUNC0(&ns_deps_buf, "%s\n", ns->namespace);

		if (ns_deps_buf.pos == 0)
			continue;

		FUNC1(fname, "%s.ns_deps", mod->name);
		FUNC2(&ns_deps_buf, fname);
	}
}