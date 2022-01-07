
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {TYPE_1__* limits; int mask; } ;
struct aa_profile {TYPE_2__ rlimits; } ;
struct aa_ext {void* pos; } ;
struct TYPE_3__ {int rlim_max; } ;


 int AA_ARRAYEND ;
 int AA_STRUCT ;
 int AA_STRUCTEND ;
 int RLIM_NLIMITS ;
 int aa_map_resource (int) ;
 int unpack_array (struct aa_ext*,int *) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char*) ;
 int unpack_u32 (struct aa_ext*,int *,int *) ;
 int unpack_u64 (struct aa_ext*,int *,int *) ;

__attribute__((used)) static bool unpack_rlimits(struct aa_ext *e, struct aa_profile *profile)
{
 void *pos = e->pos;


 if (unpack_nameX(e, AA_STRUCT, "rlimits")) {
  int i, size;
  u32 tmp = 0;
  if (!unpack_u32(e, &tmp, ((void*)0)))
   goto fail;
  profile->rlimits.mask = tmp;

  size = unpack_array(e, ((void*)0));
  if (size > RLIM_NLIMITS)
   goto fail;
  for (i = 0; i < size; i++) {
   u64 tmp2 = 0;
   int a = aa_map_resource(i);
   if (!unpack_u64(e, &tmp2, ((void*)0)))
    goto fail;
   profile->rlimits.limits[a].rlim_max = tmp2;
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
