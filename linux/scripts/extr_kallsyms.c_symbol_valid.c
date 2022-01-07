
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_entry {scalar_t__ addr; scalar_t__ sym; } ;
struct TYPE_4__ {scalar_t__ end; char* end_sym; } ;
struct TYPE_3__ {scalar_t__ end; char* end_sym; } ;


 int ARRAY_SIZE (int ) ;
 int all_symbols ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ symbol_in_range (struct sym_entry*,int ,int ) ;
 TYPE_2__* text_range_inittext ;
 TYPE_1__* text_range_text ;
 int text_ranges ;

__attribute__((used)) static int symbol_valid(struct sym_entry *s)
{





 static char *special_symbols[] = {
  "kallsyms_addresses",
  "kallsyms_offsets",
  "kallsyms_relative_base",
  "kallsyms_num_syms",
  "kallsyms_names",
  "kallsyms_markers",
  "kallsyms_token_table",
  "kallsyms_token_index",


  "_SDA_BASE_",
  "_SDA2_BASE_",
  ((void*)0) };

 static char *special_prefixes[] = {
  "__crc_",
  "__efistub_",
  ((void*)0) };

 static char *special_suffixes[] = {
  "_veneer",
  "_from_arm",
  "_from_thumb",
  ((void*)0) };

 int i;
 char *sym_name = (char *)s->sym + 1;



 if (!all_symbols) {
  if (symbol_in_range(s, text_ranges,
        ARRAY_SIZE(text_ranges)) == 0)
   return 0;






  if ((s->addr == text_range_text->end &&
    strcmp(sym_name,
           text_range_text->end_sym)) ||
      (s->addr == text_range_inittext->end &&
    strcmp(sym_name,
           text_range_inittext->end_sym)))
   return 0;
 }


 for (i = 0; special_symbols[i]; i++)
  if (strcmp(sym_name, special_symbols[i]) == 0)
   return 0;

 for (i = 0; special_prefixes[i]; i++) {
  int l = strlen(special_prefixes[i]);

  if (l <= strlen(sym_name) &&
      strncmp(sym_name, special_prefixes[i], l) == 0)
   return 0;
 }

 for (i = 0; special_suffixes[i]; i++) {
  int l = strlen(sym_name) - strlen(special_suffixes[i]);

  if (l >= 0 && strcmp(sym_name + l, special_suffixes[i]) == 0)
   return 0;
 }

 return 1;
}
