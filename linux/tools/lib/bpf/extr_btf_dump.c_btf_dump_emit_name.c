
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump {int dummy; } ;


 int btf_dump_printf (struct btf_dump const*,char*,char*,char const*) ;

__attribute__((used)) static void btf_dump_emit_name(const struct btf_dump *d,
          const char *name, bool last_was_ptr)
{
 bool separate = name[0] && !last_was_ptr;

 btf_dump_printf(d, "%s%s", separate ? " " : "", name);
}
