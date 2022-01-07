
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llc_engine {struct nfc_llc_engine* name; int entry; } ;


 int kfree (struct nfc_llc_engine*) ;
 int list_del (int *) ;
 struct nfc_llc_engine* nfc_llc_name_to_engine (char const*) ;

void nfc_llc_unregister(const char *name)
{
 struct nfc_llc_engine *llc_engine;

 llc_engine = nfc_llc_name_to_engine(name);
 if (llc_engine == ((void*)0))
  return;

 list_del(&llc_engine->entry);
 kfree(llc_engine->name);
 kfree(llc_engine);
}
