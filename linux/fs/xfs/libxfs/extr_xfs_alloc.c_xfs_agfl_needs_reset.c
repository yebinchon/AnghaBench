
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xfs_mount {int m_sb; } ;
struct xfs_agf {int agf_flcount; int agf_fllast; int agf_flfirst; } ;


 int be32_to_cpu (int ) ;
 int xfs_agfl_size (struct xfs_mount*) ;
 int xfs_sb_version_hascrc (int *) ;

__attribute__((used)) static bool
xfs_agfl_needs_reset(
 struct xfs_mount *mp,
 struct xfs_agf *agf)
{
 uint32_t f = be32_to_cpu(agf->agf_flfirst);
 uint32_t l = be32_to_cpu(agf->agf_fllast);
 uint32_t c = be32_to_cpu(agf->agf_flcount);
 int agfl_size = xfs_agfl_size(mp);
 int active;


 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return 0;






 if (f >= agfl_size || l >= agfl_size)
  return 1;
 if (c > agfl_size)
  return 1;





 if (c && l >= f)
  active = l - f + 1;
 else if (c)
  active = agfl_size - f + l + 1;
 else
  active = 0;

 return active != c;
}
