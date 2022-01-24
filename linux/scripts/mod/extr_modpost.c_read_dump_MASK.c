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
struct symbol {unsigned int kernel; int preloaded; scalar_t__ is_static; } ;
struct module {int skip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct module* FUNC2 (char*) ; 
 char* FUNC3 (unsigned long*,void*,unsigned long) ; 
 void* FUNC4 (char const*,unsigned long*) ; 
 int have_vmlinux ; 
 scalar_t__ FUNC5 (char*) ; 
 struct module* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*,unsigned long) ; 
 char* FUNC8 (char*,char) ; 
 unsigned int FUNC9 (char*,char**,int) ; 
 struct symbol* FUNC10 (char*,struct module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct module*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void FUNC13(const char *fname, unsigned int kernel)
{
	unsigned long size, pos = 0;
	void *file = FUNC4(fname, &size);
	char *line;

	if (!file)
		/* No symbol versions, silently ignore */
		return;

	while ((line = FUNC3(&pos, file, size))) {
		char *symname, *namespace, *modname, *d, *export, *end;
		unsigned int crc;
		struct module *mod;
		struct symbol *s;

		if (!(symname = FUNC8(line, '\t')))
			goto fail;
		*symname++ = '\0';
		if (!(namespace = FUNC8(symname, '\t')))
			goto fail;
		*namespace++ = '\0';
		if (!(modname = FUNC8(namespace, '\t')))
			goto fail;
		*modname++ = '\0';
		if ((export = FUNC8(modname, '\t')) != NULL)
			*export++ = '\0';
		if (export && ((end = FUNC8(export, '\t')) != NULL))
			*end = '\0';
		crc = FUNC9(line, &d, 16);
		if (*symname == '\0' || *modname == '\0' || *d != '\0')
			goto fail;
		mod = FUNC2(modname);
		if (!mod) {
			if (FUNC5(modname))
				have_vmlinux = 1;
			mod = FUNC6(modname);
			mod->skip = 1;
		}
		s = FUNC10(symname, mod, FUNC0(export));
		s->kernel    = kernel;
		s->preloaded = 1;
		s->is_static = 0;
		FUNC11(symname, mod, crc, FUNC0(export));
		FUNC12(symname, namespace);
	}
	FUNC7(file, size);
	return;
fail:
	FUNC7(file, size);
	FUNC1("parse error in symbol dump file\n");
}