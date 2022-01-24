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
struct module {scalar_t__ has_cleanup; scalar_t__ has_init; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*) ; 

__attribute__((used)) static void FUNC1(struct buffer *b, struct module *mod)
{
	FUNC0(b, "#include <linux/build-salt.h>\n");
	FUNC0(b, "#include <linux/module.h>\n");
	FUNC0(b, "#include <linux/vermagic.h>\n");
	FUNC0(b, "#include <linux/compiler.h>\n");
	FUNC0(b, "\n");
	FUNC0(b, "BUILD_SALT;\n");
	FUNC0(b, "\n");
	FUNC0(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
	FUNC0(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
	FUNC0(b, "\n");
	FUNC0(b, "__visible struct module __this_module\n");
	FUNC0(b, "__section(.gnu.linkonce.this_module) = {\n");
	FUNC0(b, "\t.name = KBUILD_MODNAME,\n");
	if (mod->has_init)
		FUNC0(b, "\t.init = init_module,\n");
	if (mod->has_cleanup)
		FUNC0(b, "#ifdef CONFIG_MODULE_UNLOAD\n"
			      "\t.exit = cleanup_module,\n"
			      "#endif\n");
	FUNC0(b, "\t.arch = MODULE_ARCH_INIT,\n");
	FUNC0(b, "};\n");
}