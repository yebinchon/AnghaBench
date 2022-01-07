
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char** table; int size; } ;
struct TYPE_3__ {TYPE_2__ trans; } ;
struct aa_profile {TYPE_1__ file; } ;
struct aa_ext {void* pos; } ;


 int AA_ARRAYEND ;
 int AA_STRUCT ;
 int AA_STRUCTEND ;
 int GFP_KERNEL ;
 int aa_free_domain_entries (TYPE_2__*) ;
 scalar_t__ isspace (char) ;
 char** kcalloc (int,int,int ) ;
 int unpack_array (struct aa_ext*,int *) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char*) ;
 int unpack_strdup (struct aa_ext*,char**,int *) ;

__attribute__((used)) static bool unpack_trans_table(struct aa_ext *e, struct aa_profile *profile)
{
 void *saved_pos = e->pos;


 if (unpack_nameX(e, AA_STRUCT, "xtable")) {
  int i, size;

  size = unpack_array(e, ((void*)0));

  if (size > 16 - 4)
   goto fail;
  profile->file.trans.table = kcalloc(size, sizeof(char *),
          GFP_KERNEL);
  if (!profile->file.trans.table)
   goto fail;

  profile->file.trans.size = size;
  for (i = 0; i < size; i++) {
   char *str;
   int c, j, pos, size2 = unpack_strdup(e, &str, ((void*)0));



   if (!size2)
    goto fail;
   profile->file.trans.table[i] = str;

   if (isspace(*str))
    goto fail;


   for (c = j = 0; j < size2 - 1; j++) {
    if (!str[j]) {
     pos = j;
     c++;
    }
   }
   if (*str == ':') {

    if (!str[1])
     goto fail;






    if (c == 1)
     str[pos] = ':';
    else if (c > 1)
     goto fail;
   } else if (c)

    goto fail;
  }
  if (!unpack_nameX(e, AA_ARRAYEND, ((void*)0)))
   goto fail;
  if (!unpack_nameX(e, AA_STRUCTEND, ((void*)0)))
   goto fail;
 }
 return 1;

fail:
 aa_free_domain_entries(&profile->file.trans);
 e->pos = saved_pos;
 return 0;
}
