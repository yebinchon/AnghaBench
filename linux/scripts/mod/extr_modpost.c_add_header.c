
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ has_cleanup; scalar_t__ has_init; } ;
struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*) ;

__attribute__((used)) static void add_header(struct buffer *b, struct module *mod)
{
 buf_printf(b, "#include <linux/build-salt.h>\n");
 buf_printf(b, "#include <linux/module.h>\n");
 buf_printf(b, "#include <linux/vermagic.h>\n");
 buf_printf(b, "#include <linux/compiler.h>\n");
 buf_printf(b, "\n");
 buf_printf(b, "BUILD_SALT;\n");
 buf_printf(b, "\n");
 buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
 buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
 buf_printf(b, "\n");
 buf_printf(b, "__visible struct module __this_module\n");
 buf_printf(b, "__section(.gnu.linkonce.this_module) = {\n");
 buf_printf(b, "\t.name = KBUILD_MODNAME,\n");
 if (mod->has_init)
  buf_printf(b, "\t.init = init_module,\n");
 if (mod->has_cleanup)
  buf_printf(b, "#ifdef CONFIG_MODULE_UNLOAD\n"
         "\t.exit = cleanup_module,\n"
         "#endif\n");
 buf_printf(b, "\t.arch = MODULE_ARCH_INIT,\n");
 buf_printf(b, "};\n");
}
