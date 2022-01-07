
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_range {int iomode; } ;
struct nfs4_ff_layout_mirror {TYPE_2__* mirror_ds; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ds_versions; } ;
struct TYPE_3__ {int tightly_coupled; } ;


 struct cred* ff_layout_get_mirror_cred (struct nfs4_ff_layout_mirror*,int ) ;
 struct cred* get_cred (struct cred const*) ;

const struct cred *
ff_layout_get_ds_cred(struct nfs4_ff_layout_mirror *mirror,
        const struct pnfs_layout_range *range,
        const struct cred *mdscred)
{
 const struct cred *cred;

 if (mirror && !mirror->mirror_ds->ds_versions[0].tightly_coupled) {
  cred = ff_layout_get_mirror_cred(mirror, range->iomode);
  if (!cred)
   cred = get_cred(mdscred);
 } else {
  cred = get_cred(mdscred);
 }
 return cred;
}
