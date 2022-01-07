
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct neighbour {int flags; } ;


 int NEIGH_UPDATE_F_ADMIN ;
 int NEIGH_UPDATE_F_EXT_LEARNED ;
 int NTF_EXT_LEARNED ;

__attribute__((used)) static bool neigh_update_ext_learned(struct neighbour *neigh, u32 flags,
         int *notify)
{
 bool rc = 0;
 u8 ndm_flags;

 if (!(flags & NEIGH_UPDATE_F_ADMIN))
  return rc;

 ndm_flags = (flags & NEIGH_UPDATE_F_EXT_LEARNED) ? NTF_EXT_LEARNED : 0;
 if ((neigh->flags ^ ndm_flags) & NTF_EXT_LEARNED) {
  if (ndm_flags & NTF_EXT_LEARNED)
   neigh->flags |= NTF_EXT_LEARNED;
  else
   neigh->flags &= ~NTF_EXT_LEARNED;
  rc = 1;
  *notify = 1;
 }

 return rc;
}
