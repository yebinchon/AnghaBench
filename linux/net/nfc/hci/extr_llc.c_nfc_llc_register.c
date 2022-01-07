
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llc_ops {int dummy; } ;
struct nfc_llc_engine {int entry; struct nfc_llc_ops* ops; int * name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct nfc_llc_engine*) ;
 int * kstrdup (char const*,int ) ;
 struct nfc_llc_engine* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int llc_engines ;

int nfc_llc_register(const char *name, struct nfc_llc_ops *ops)
{
 struct nfc_llc_engine *llc_engine;

 llc_engine = kzalloc(sizeof(struct nfc_llc_engine), GFP_KERNEL);
 if (llc_engine == ((void*)0))
  return -ENOMEM;

 llc_engine->name = kstrdup(name, GFP_KERNEL);
 if (llc_engine->name == ((void*)0)) {
  kfree(llc_engine);
  return -ENOMEM;
 }
 llc_engine->ops = ops;

 INIT_LIST_HEAD(&llc_engine->entry);
 list_add_tail(&llc_engine->entry, &llc_engines);

 return 0;
}
