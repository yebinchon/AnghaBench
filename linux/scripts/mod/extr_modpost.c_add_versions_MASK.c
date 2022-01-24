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
struct symbol {int /*<<< orphan*/  name; int /*<<< orphan*/  crc; int /*<<< orphan*/  crc_valid; struct module* module; struct symbol* next; } ;
struct module {int /*<<< orphan*/  name; struct symbol* unres; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ MODULE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,...) ; 
 struct symbol* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modversions ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct buffer *b, struct module *mod)
{
	struct symbol *s, *exp;
	int err = 0;

	for (s = mod->unres; s; s = s->next) {
		exp = FUNC1(s->name);
		if (!exp || exp->module == mod)
			continue;
		s->module = exp->module;
		s->crc_valid = exp->crc_valid;
		s->crc = exp->crc;
	}

	if (!modversions)
		return err;

	FUNC0(b, "\n");
	FUNC0(b, "static const struct modversion_info ____versions[]\n");
	FUNC0(b, "__used __section(__versions) = {\n");

	for (s = mod->unres; s; s = s->next) {
		if (!s->module)
			continue;
		if (!s->crc_valid) {
			FUNC4("\"%s\" [%s.ko] has no CRC!\n",
				s->name, mod->name);
			continue;
		}
		if (FUNC3(s->name) >= MODULE_NAME_LEN) {
			FUNC2("too long symbol \"%s\" [%s.ko]\n",
			       s->name, mod->name);
			err = 1;
			break;
		}
		FUNC0(b, "\t{ %#8x, \"%s\" },\n",
			   s->crc, s->name);
	}

	FUNC0(b, "};\n");

	return err;
}