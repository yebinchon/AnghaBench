
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct inline_node {int dummy; } ;
struct dso {int dummy; } ;


 struct inline_node* addr2inlines (char const*,int ,struct dso*,struct symbol*) ;
 char* dso__name (struct dso*) ;

struct inline_node *dso__parse_addr_inlines(struct dso *dso, u64 addr,
         struct symbol *sym)
{
 const char *dso_name;

 dso_name = dso__name(dso);
 if (dso_name == ((void*)0))
  return ((void*)0);

 return addr2inlines(dso_name, addr, dso, sym);
}
