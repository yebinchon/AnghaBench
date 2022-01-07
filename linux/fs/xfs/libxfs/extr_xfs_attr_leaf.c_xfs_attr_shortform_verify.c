
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
struct TYPE_4__ {scalar_t__ di_aformat; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct TYPE_5__ {scalar_t__ if_data; } ;
struct xfs_ifork {int if_bytes; TYPE_2__ if_u1; } ;
struct TYPE_6__ {int count; } ;
struct xfs_attr_shortform {TYPE_3__ hdr; struct xfs_attr_sf_entry* list; } ;
struct xfs_attr_sf_hdr {int dummy; } ;
struct xfs_attr_sf_entry {scalar_t__ namelen; int flags; } ;


 int ASSERT (int) ;
 int XFS_ATTR_FORK ;
 int XFS_ATTR_NSP_ONDISK_MASK ;
 struct xfs_attr_sf_entry* XFS_ATTR_SF_NEXTENTRY (struct xfs_attr_sf_entry*) ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int ) ;
 int * __this_address ;
 int hweight8 (int) ;

xfs_failaddr_t
xfs_attr_shortform_verify(
 struct xfs_inode *ip)
{
 struct xfs_attr_shortform *sfp;
 struct xfs_attr_sf_entry *sfep;
 struct xfs_attr_sf_entry *next_sfep;
 char *endp;
 struct xfs_ifork *ifp;
 int i;
 int size;

 ASSERT(ip->i_d.di_aformat == XFS_DINODE_FMT_LOCAL);
 ifp = XFS_IFORK_PTR(ip, XFS_ATTR_FORK);
 sfp = (struct xfs_attr_shortform *)ifp->if_u1.if_data;
 size = ifp->if_bytes;




 if (size < sizeof(struct xfs_attr_sf_hdr))
  return __this_address;

 endp = (char *)sfp + size;


 sfep = &sfp->list[0];
 for (i = 0; i < sfp->hdr.count; i++) {





  if (((char *)sfep + sizeof(*sfep)) >= endp)
   return __this_address;


  if (sfep->namelen == 0)
   return __this_address;






  next_sfep = XFS_ATTR_SF_NEXTENTRY(sfep);
  if ((char *)next_sfep > endp)
   return __this_address;






  if (sfep->flags & ~XFS_ATTR_NSP_ONDISK_MASK)
   return __this_address;






  if (hweight8(sfep->flags & XFS_ATTR_NSP_ONDISK_MASK) > 1)
   return __this_address;

  sfep = next_sfep;
 }
 if ((void *)sfep != (void *)endp)
  return __this_address;

 return ((void*)0);
}
