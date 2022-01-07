
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*) ;

__attribute__((used)) static void add_retpoline(struct buffer *b)
{
 buf_printf(b, "\n#ifdef CONFIG_RETPOLINE\n");
 buf_printf(b, "MODULE_INFO(retpoline, \"Y\");\n");
 buf_printf(b, "#endif\n");
}
