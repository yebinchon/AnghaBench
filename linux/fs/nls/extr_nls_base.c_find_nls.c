
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int owner; scalar_t__ alias; scalar_t__ charset; struct nls_table* next; } ;


 int nls_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (scalar_t__,char*) ;
 struct nls_table* tables ;
 int try_module_get (int ) ;

__attribute__((used)) static struct nls_table *find_nls(char *charset)
{
 struct nls_table *nls;
 spin_lock(&nls_lock);
 for (nls = tables; nls; nls = nls->next) {
  if (!strcmp(nls->charset, charset))
   break;
  if (nls->alias && !strcmp(nls->alias, charset))
   break;
 }
 if (nls && !try_module_get(nls->owner))
  nls = ((void*)0);
 spin_unlock(&nls_lock);
 return nls;
}
