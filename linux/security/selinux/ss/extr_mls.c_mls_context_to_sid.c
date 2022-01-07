
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sidtab {int dummy; } ;
struct TYPE_8__ {int table; } ;
struct TYPE_6__ {int table; } ;
struct policydb {TYPE_3__ p_cats; TYPE_1__ p_levels; int mls_enabled; } ;
struct level_datum {TYPE_2__* level; } ;
struct TYPE_10__ {TYPE_4__* level; } ;
struct context {TYPE_5__ range; } ;
struct cat_datum {int value; } ;
struct TYPE_9__ {int cat; int sens; } ;
struct TYPE_7__ {int sens; } ;


 int EINVAL ;
 scalar_t__ SECSID_NULL ;
 int ebitmap_cpy (int *,int *) ;
 int ebitmap_set_bit (int *,int,int) ;
 void* hashtab_search (int ,char*) ;
 int mls_context_cpy (struct context*,struct context*) ;
 struct context* sidtab_search (struct sidtab*,scalar_t__) ;
 char* strchr (char*,char) ;

int mls_context_to_sid(struct policydb *pol,
         char oldc,
         char *scontext,
         struct context *context,
         struct sidtab *s,
         u32 def_sid)
{
 char *sensitivity, *cur_cat, *next_cat, *rngptr;
 struct level_datum *levdatum;
 struct cat_datum *catdatum, *rngdatum;
 int l, rc, i;
 char *rangep[2];

 if (!pol->mls_enabled) {




  if (oldc && def_sid == SECSID_NULL)
   return -EINVAL;
  return 0;
 }





 if (!oldc) {
  struct context *defcon;

  if (def_sid == SECSID_NULL)
   return -EINVAL;

  defcon = sidtab_search(s, def_sid);
  if (!defcon)
   return -EINVAL;

  return mls_context_cpy(context, defcon);
 }





 rangep[0] = scontext;
 rangep[1] = strchr(scontext, '-');
 if (rangep[1]) {
  rangep[1][0] = '\0';
  rangep[1]++;
 }


 for (l = 0; l < 2; l++) {

  sensitivity = rangep[l];
  if (sensitivity == ((void*)0))
   break;
  next_cat = strchr(sensitivity, ':');
  if (next_cat)
   *(next_cat++) = '\0';


  levdatum = hashtab_search(pol->p_levels.table, sensitivity);
  if (!levdatum)
   return -EINVAL;
  context->range.level[l].sens = levdatum->level->sens;


  while (next_cat != ((void*)0)) {
   cur_cat = next_cat;
   next_cat = strchr(next_cat, ',');
   if (next_cat != ((void*)0))
    *(next_cat++) = '\0';


   rngptr = strchr(cur_cat, '.');
   if (rngptr != ((void*)0)) {

    *rngptr++ = '\0';
   }

   catdatum = hashtab_search(pol->p_cats.table, cur_cat);
   if (!catdatum)
    return -EINVAL;

   rc = ebitmap_set_bit(&context->range.level[l].cat,
          catdatum->value - 1, 1);
   if (rc)
    return rc;


   if (rngptr == ((void*)0))
    continue;

   rngdatum = hashtab_search(pol->p_cats.table, rngptr);
   if (!rngdatum)
    return -EINVAL;

   if (catdatum->value >= rngdatum->value)
    return -EINVAL;

   for (i = catdatum->value; i < rngdatum->value; i++) {
    rc = ebitmap_set_bit(&context->range.level[l].cat, i, 1);
    if (rc)
     return rc;
   }
  }
 }


 if (rangep[1] == ((void*)0)) {
  context->range.level[1].sens = context->range.level[0].sens;
  rc = ebitmap_cpy(&context->range.level[1].cat,
     &context->range.level[0].cat);
  if (rc)
   return rc;
 }

 return 0;
}
