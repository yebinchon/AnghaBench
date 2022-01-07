
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {scalar_t__ addr; char* sym; int start_pos; } ;


 int may_be_linker_script_provide_symbol (struct sym_entry const*) ;
 int prefix_underscores_count (char const*) ;

__attribute__((used)) static int compare_symbols(const void *a, const void *b)
{
 const struct sym_entry *sa;
 const struct sym_entry *sb;
 int wa, wb;

 sa = a;
 sb = b;


 if (sa->addr > sb->addr)
  return 1;
 if (sa->addr < sb->addr)
  return -1;


 wa = (sa->sym[0] == 'w') || (sa->sym[0] == 'W');
 wb = (sb->sym[0] == 'w') || (sb->sym[0] == 'W');
 if (wa != wb)
  return wa - wb;


 wa = may_be_linker_script_provide_symbol(sa);
 wb = may_be_linker_script_provide_symbol(sb);
 if (wa != wb)
  return wa - wb;


 wa = prefix_underscores_count((const char *)sa->sym + 1);
 wb = prefix_underscores_count((const char *)sb->sym + 1);
 if (wa != wb)
  return wa - wb;


 return sa->start_pos - sb->start_pos;
}
