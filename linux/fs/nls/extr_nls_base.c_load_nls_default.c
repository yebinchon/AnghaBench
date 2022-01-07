
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;


 int CONFIG_NLS_DEFAULT ;
 struct nls_table default_table ;
 struct nls_table* load_nls (int ) ;

struct nls_table *load_nls_default(void)
{
 struct nls_table *default_nls;

 default_nls = load_nls(CONFIG_NLS_DEFAULT);
 if (default_nls != ((void*)0))
  return default_nls;
 else
  return &default_table;
}
