
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct svc_fh {TYPE_2__* fh_export; } ;
struct nfsd4_deviceid {scalar_t__ pad; int generation; int fsid_idx; } ;
struct TYPE_4__ {TYPE_1__* ex_devid_map; } ;
struct TYPE_3__ {int idx; } ;


 int ENOMEM ;
 int nfsd4_alloc_devid_map (struct svc_fh const*) ;

int
nfsd4_set_deviceid(struct nfsd4_deviceid *id, const struct svc_fh *fhp,
  u32 device_generation)
{
 if (!fhp->fh_export->ex_devid_map) {
  nfsd4_alloc_devid_map(fhp);
  if (!fhp->fh_export->ex_devid_map)
   return -ENOMEM;
 }

 id->fsid_idx = fhp->fh_export->ex_devid_map->idx;
 id->generation = device_generation;
 id->pad = 0;
 return 0;
}
