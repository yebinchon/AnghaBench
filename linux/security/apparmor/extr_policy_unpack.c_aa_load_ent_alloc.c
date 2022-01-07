
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_load_ent {int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct aa_load_ent* kzalloc (int,int ) ;

struct aa_load_ent *aa_load_ent_alloc(void)
{
 struct aa_load_ent *ent = kzalloc(sizeof(*ent), GFP_KERNEL);
 if (ent)
  INIT_LIST_HEAD(&ent->list);
 return ent;
}
