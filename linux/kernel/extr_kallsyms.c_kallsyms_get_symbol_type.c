
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t* kallsyms_names ;
 size_t* kallsyms_token_index ;
 char* kallsyms_token_table ;

__attribute__((used)) static char kallsyms_get_symbol_type(unsigned int off)
{




 return kallsyms_token_table[kallsyms_token_index[kallsyms_names[off + 1]]];
}
