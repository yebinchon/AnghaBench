
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known_list_elem {int list; struct smack_known* smk_label; } ;
struct smack_known {int dummy; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct smack_known*) ;
 int PTR_ERR (struct smack_known*) ;
 struct smack_known_list_elem* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 struct smack_known* smk_import_entry (char*,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int smk_parse_label_list(char *data, struct list_head *list)
{
 char *tok;
 struct smack_known *skp;
 struct smack_known_list_elem *sklep;

 while ((tok = strsep(&data, " ")) != ((void*)0)) {
  if (!*tok)
   continue;

  skp = smk_import_entry(tok, 0);
  if (IS_ERR(skp))
   return PTR_ERR(skp);

  sklep = kzalloc(sizeof(*sklep), GFP_KERNEL);
  if (sklep == ((void*)0))
   return -ENOMEM;

  sklep->smk_label = skp;
  list_add(&sklep->list, list);
 }

 return 0;
}
