
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objtool_file {int dummy; } ;


 int add_call_destinations (struct objtool_file*) ;
 int add_dead_ends (struct objtool_file*) ;
 int add_ignore_alternatives (struct objtool_file*) ;
 int add_ignores (struct objtool_file*) ;
 int add_jump_destinations (struct objtool_file*) ;
 int add_jump_table_alts (struct objtool_file*) ;
 int add_special_section_alts (struct objtool_file*) ;
 int add_uaccess_safe (struct objtool_file*) ;
 int decode_instructions (struct objtool_file*) ;
 int mark_rodata (struct objtool_file*) ;
 int read_retpoline_hints (struct objtool_file*) ;
 int read_unwind_hints (struct objtool_file*) ;

__attribute__((used)) static int decode_sections(struct objtool_file *file)
{
 int ret;

 mark_rodata(file);

 ret = decode_instructions(file);
 if (ret)
  return ret;

 ret = add_dead_ends(file);
 if (ret)
  return ret;

 add_ignores(file);
 add_uaccess_safe(file);

 ret = add_ignore_alternatives(file);
 if (ret)
  return ret;

 ret = add_jump_destinations(file);
 if (ret)
  return ret;

 ret = add_special_section_alts(file);
 if (ret)
  return ret;

 ret = add_call_destinations(file);
 if (ret)
  return ret;

 ret = add_jump_table_alts(file);
 if (ret)
  return ret;

 ret = read_unwind_hints(file);
 if (ret)
  return ret;

 ret = read_retpoline_hints(file);
 if (ret)
  return ret;

 return 0;
}
