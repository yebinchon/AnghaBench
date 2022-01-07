
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pnfs_layout_hdr {scalar_t__ plh_return_iomode; scalar_t__ plh_return_seq; int plh_flags; } ;
typedef enum pnfs_iomode { ____Placeholder_pnfs_iomode } pnfs_iomode ;


 int IOMODE_ANY ;
 int NFS_LAYOUT_RETURN_REQUESTED ;
 int WARN_ON_ONCE (int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_set_plh_return_info(struct pnfs_layout_hdr *lo, enum pnfs_iomode iomode,
    u32 seq)
{
 if (lo->plh_return_iomode != 0 && lo->plh_return_iomode != iomode)
  iomode = IOMODE_ANY;
 lo->plh_return_iomode = iomode;
 set_bit(NFS_LAYOUT_RETURN_REQUESTED, &lo->plh_flags);
 if (seq != 0) {
  WARN_ON_ONCE(lo->plh_return_seq != 0 && lo->plh_return_seq != seq);
  lo->plh_return_seq = seq;
 }
}
