
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_2__ {unsigned int sm_type; } ;


 unsigned int XFS_SCRUB_TYPE_AGF ;
 unsigned int XFS_SCRUB_TYPE_AGFL ;
 unsigned int XFS_SCRUB_TYPE_AGI ;

__attribute__((used)) static inline bool
want_ag_read_header_failure(
 struct xfs_scrub *sc,
 unsigned int type)
{

 if (sc->sm->sm_type != XFS_SCRUB_TYPE_AGF &&
     sc->sm->sm_type != XFS_SCRUB_TYPE_AGFL &&
     sc->sm->sm_type != XFS_SCRUB_TYPE_AGI)
  return 1;





 if (sc->sm->sm_type == type)
  return 1;
 return 0;
}
