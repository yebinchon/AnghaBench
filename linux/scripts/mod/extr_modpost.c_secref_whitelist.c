
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sectioncheck {int symbol_white_list; } ;


 int data_sections ;
 int head_sections ;
 int init_data_sections ;
 int init_exit_sections ;
 int init_sections ;
 int linker_symbols ;
 scalar_t__ match (char const*,int ) ;
 int optim_symbols ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strstarts (char const*,char*) ;
 int text_sections ;

__attribute__((used)) static int secref_whitelist(const struct sectioncheck *mismatch,
       const char *fromsec, const char *fromsym,
       const char *tosec, const char *tosym)
{

 if (match(tosec, init_data_sections) &&
     match(fromsec, data_sections) &&
     strstarts(fromsym, "__param"))
  return 0;


 if (strcmp(tosec, ".init.text") == 0 &&
     match(fromsec, data_sections) &&
     strstarts(fromsym, "__param_ops_"))
  return 0;


 if (match(tosec, init_exit_sections) &&
     match(fromsec, data_sections) &&
     match(fromsym, mismatch->symbol_white_list))
  return 0;


 if (match(fromsec, head_sections) &&
     match(tosec, init_sections))
  return 0;


 if (match(tosym, linker_symbols))
  return 0;


 if (match(fromsec, text_sections) &&
     match(tosec, init_sections) &&
     match(fromsym, optim_symbols))
  return 0;


 if (strstarts(fromsym, ".L"))
  return 0;

 return 1;
}
