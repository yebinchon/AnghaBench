
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nprim; } ;
struct TYPE_6__ {scalar_t__ nprim; int table; } ;
struct policydb {TYPE_2__ p_cats; TYPE_3__ p_levels; } ;
struct mls_level {scalar_t__ sens; int cat; } ;
struct level_datum {TYPE_1__* level; } ;
struct TYPE_4__ {int cat; } ;


 int SYM_LEVELS ;
 int ebitmap_contains (int *,int *,int ) ;
 struct level_datum* hashtab_search (int ,int ) ;
 int sym_name (struct policydb*,int ,scalar_t__) ;

int mls_level_isvalid(struct policydb *p, struct mls_level *l)
{
 struct level_datum *levdatum;

 if (!l->sens || l->sens > p->p_levels.nprim)
  return 0;
 levdatum = hashtab_search(p->p_levels.table,
      sym_name(p, SYM_LEVELS, l->sens - 1));
 if (!levdatum)
  return 0;






 return ebitmap_contains(&levdatum->level->cat, &l->cat,
    p->p_cats.nprim);
}
