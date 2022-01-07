
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xfs_bstat {int bs_projid_lo; scalar_t__ bs_projid_hi; } ;



__attribute__((used)) static inline uint32_t
bstat_get_projid(const struct xfs_bstat *bs)
{
 return (uint32_t)bs->bs_projid_hi << 16 | bs->bs_projid_lo;
}
