
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {void* di_projid_lo; void* di_projid_hi; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
typedef int prid_t ;



__attribute__((used)) static inline void
xfs_set_projid(struct xfs_inode *ip,
  prid_t projid)
{
 ip->i_d.di_projid_hi = (uint16_t) (projid >> 16);
 ip->i_d.di_projid_lo = (uint16_t) (projid & 0xffff);
}
