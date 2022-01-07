
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int xattr_count; int * xattrs; } ;
struct aa_ext {void* pos; } ;


 int AA_ARRAYEND ;
 int AA_STRUCT ;
 int AA_STRUCTEND ;
 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int unpack_array (struct aa_ext*,int *) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char*) ;
 int unpack_strdup (struct aa_ext*,int *,int *) ;

__attribute__((used)) static bool unpack_xattrs(struct aa_ext *e, struct aa_profile *profile)
{
 void *pos = e->pos;

 if (unpack_nameX(e, AA_STRUCT, "xattrs")) {
  int i, size;

  size = unpack_array(e, ((void*)0));
  profile->xattr_count = size;
  profile->xattrs = kcalloc(size, sizeof(char *), GFP_KERNEL);
  if (!profile->xattrs)
   goto fail;
  for (i = 0; i < size; i++) {
   if (!unpack_strdup(e, &profile->xattrs[i], ((void*)0)))
    goto fail;
  }
  if (!unpack_nameX(e, AA_ARRAYEND, ((void*)0)))
   goto fail;
  if (!unpack_nameX(e, AA_STRUCTEND, ((void*)0)))
   goto fail;
 }

 return 1;

fail:
 e->pos = pos;
 return 0;
}
