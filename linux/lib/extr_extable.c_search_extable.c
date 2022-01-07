
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int dummy; } ;


 struct exception_table_entry const* bsearch (unsigned long*,struct exception_table_entry const*,size_t const,int,int ) ;
 int cmp_ex_search ;

const struct exception_table_entry *
search_extable(const struct exception_table_entry *base,
        const size_t num,
        unsigned long value)
{
 return bsearch(&value, base, num,
         sizeof(struct exception_table_entry), cmp_ex_search);
}
