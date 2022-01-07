
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct aa_secmark {int dummy; } ;
struct aa_profile {int secmark_count; TYPE_1__* secmark; } ;
struct aa_ext {void* pos; } ;
struct TYPE_4__ {struct TYPE_4__* label; int deny; int audit; } ;


 int AA_ARRAYEND ;
 int AA_STRUCT ;
 int AA_STRUCTEND ;
 int GFP_KERNEL ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int unpack_array (struct aa_ext*,int *) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char*) ;
 int unpack_strdup (struct aa_ext*,TYPE_1__**,int *) ;
 int unpack_u8 (struct aa_ext*,int *,int *) ;

__attribute__((used)) static bool unpack_secmark(struct aa_ext *e, struct aa_profile *profile)
{
 void *pos = e->pos;
 int i, size;

 if (unpack_nameX(e, AA_STRUCT, "secmark")) {
  size = unpack_array(e, ((void*)0));

  profile->secmark = kcalloc(size, sizeof(struct aa_secmark),
        GFP_KERNEL);
  if (!profile->secmark)
   goto fail;

  profile->secmark_count = size;

  for (i = 0; i < size; i++) {
   if (!unpack_u8(e, &profile->secmark[i].audit, ((void*)0)))
    goto fail;
   if (!unpack_u8(e, &profile->secmark[i].deny, ((void*)0)))
    goto fail;
   if (!unpack_strdup(e, &profile->secmark[i].label, ((void*)0)))
    goto fail;
  }
  if (!unpack_nameX(e, AA_ARRAYEND, ((void*)0)))
   goto fail;
  if (!unpack_nameX(e, AA_STRUCTEND, ((void*)0)))
   goto fail;
 }

 return 1;

fail:
 if (profile->secmark) {
  for (i = 0; i < size; i++)
   kfree(profile->secmark[i].label);
  kfree(profile->secmark);
  profile->secmark_count = 0;
  profile->secmark = ((void*)0);
 }

 e->pos = pos;
 return 0;
}
